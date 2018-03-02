
package com.servlet;  
  
  
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.*;  
  
import javax.servlet.http.*;

import org.apache.jasper.tagplugins.jstl.core.Out;    
public class DownloadServlet extends HttpServlet {   
 private final String ENCODING="UTF-8";   
  
 private final String CONTENT_TYPE="text/html;charset=UTF-8";  
  
 public void doGet(HttpServletRequest request,HttpServletResponse response )throws ServletException,IOException{  
	  response.setContentType( "application/msword;charset=UTF-8 "); 
	 request.setCharacterEncoding(ENCODING);  
	 String p = request.getParameter("path");
		try{
				String fullfilename=p; 
				File file = new File(p);
				fullfilename=new String(fullfilename.getBytes("iso-8859-1"),"UTF-8");
			    ServletOutputStream out = response.getOutputStream();   
				response.setHeader("Content-disposition","attachment;filename="
			+ new String(file.getName().getBytes("UTF-8"),"UTF-8"));
				response.setContentType("application/octet-stream");
				BufferedInputStream bis = null;  
				BufferedOutputStream bos = null;  
					 try {  
					      bis = new BufferedInputStream(new FileInputStream(fullfilename));  
					      bos = new BufferedOutputStream(out);  
					      byte[] buff = new byte[2048];  
					      int bytesRead;  
					       while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {  
					                bos.write(buff, 0, bytesRead);  
					            }  
					        } catch (IOException e) {  
					            throw e;  
					        } finally {  
					            if (bis != null) {  
					                bis.close();  
					            }  
					            if (bos != null) {  
					                bos.close();  
					            }  
					        }  
 
  
			
						}
			catch(Exception e){
			
			}
 	}  
   
 public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{  
  
 //调用doGet()方法  
  
 doGet(request,response);  
  
 } 
 
  
}  
