<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    //数据库连接
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    String username = request.getParameter("username");
    String password = request.getParameter("password"); //获取用户输入的用户名和密码
    //标记
    
    boolean flag = false; 
    try{
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/music";
        String Username="root";
        String Password="111111";
        conn = DriverManager.getConnection(url,Username,Password);
        stmt = conn.createStatement();
        String sql = "select * from user";
        rs = stmt.executeQuery(sql);
        while(rs.next()){
        	if(username.equals(rs.getString("username"))){
               if(password.equals(rs.getString("password"))){
                flag = true;
                session.setAttribute("username",username);
            }
        }
       }
    } catch(Exception e) {
        e.printStackTrace();
    } finally {
        if(conn!=null){
            try{
                conn.close();
            }catch(SQLException e){
                e.printStackTrace();
            }
        }
    }
   if(flag==true){
	   %>
        	<script type='text/javascript'> alert('登陆成功！'); 
			location.href='../index2.jsp';</script>
        <%
        } else{
            %>
            <jsp:forward page = "login_failure.jsp"></jsp:forward>
            <%
        } 
%>
       