<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>歌曲查询</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="style/div.css" media="all"/>
<style type="text/css">
*{
	margin:0px;
	padding:0px;
}
body{
	font-family:"微软雅黑";
}
table{
	width:1000px;
	height:auto;
	border:3px;
}
tr{
	height:40px;
}
td{
font-size: 17px;
}
h2{margin: 0px;}
#content{
	width:700px;
	height:500px;
	padding-top: 200px;
	padding-left: 200px;
}

#page{
	padding-top:25px;
	margin-left: 350px;
}
#more{
	padding-top:25px;
	margin-left: 420px;
}
table a{
	color:#ff6644;
}
</style>
</head>

<html>
	<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<div id="header">
	 	<div id=login>
	 		<li><a href="index.jsp" class="menu">退出登录</a></li>
	 	</div>
	 	<div id="search">
	 		<form action="1.jsp" method="post" >
				<input name="name" type="text"  id="stext"/>
				<input type="submit" value=" "  id="sub">
				<%request.setAttribute("name","name"); %>
			</form>
	 	</div>
	 	<div id="sidemenu">
             <ul>
               <li><a href="foreground/index2.jsp" class="menu">首页</a></li>
               <li><a href="#about" class="menu">歌手</a></li>                          

      
               <li><a href="#services" class="menu">榜单</a></li>
               <li><a href="#works" class="menu">MV</a></li>
               <li><a href="#blog" class="menu">歌单</a></li>
               <li><a href="#contact" class="menu">商城</a></li>
               <li><a href="#contact" class="menu">粉丝聚焦</a></li>
             </ul>
         </div>
	 	<div id="logo">       
             <img src="images/logo.png" alt="">
        </div>         <!-- logo -->
	</div> <!-- header -->
	
	<div id="content">
	<table border="0" spacing="0" >
		<tr align="left">
			<td  colspan="6" >
				<h2>单曲</h2>
			</td>
		</tr>
		<tr align="left">
			<td  colspan="6" >
				<input type="button"  value="播放全部 " id="on"/>
				<input type="button" value="+全部添加到 "  id="on">
				<input type="button" value="下载"  id="on">
			</td>
		</tr>
		<tr align="left">
			<td><b>ID</b></td>
			<td><b>歌名</b></td>
			<td><b>歌手</b></td>
			<td><b>专辑</b></td>
			<td><b>类型</b></td>
			<td><b>下载</b></td>
		</tr>
<%!
	public static final String DRIVER = "com.mysql.jdbc.Driver";
	public static final String USER = "root";
	public static final String PASS = "111111";
	public static final String URL = "jdbc:mysql://localhost:3306/music";
	public static final int PAGESIZE = 8;
	int pageCount;
	int curPage = 1;
%>
<%
	//一页放5个
	String user = null;
	String pass = null;
	try{
		String name = request.getParameter("name");
		Class.forName(DRIVER);
		Connection con = DriverManager.getConnection(URL,USER,PASS);
		String sql = "select *  from music where  name like '%"+name+"%' or singername like '%"+name+"%' or album like '%"+name+"%' or type like '%"+name+"%'";
		PreparedStatement stat = con.prepareStatement(sql,ResultSet.TYPE_FORWARD_ONLY,ResultSet.CONCUR_READ_ONLY);
		ResultSet rs = stat.executeQuery();
		rs.last();
		int size = rs.getRow();
		pageCount = (size%PAGESIZE==0)?(size/PAGESIZE):(size/PAGESIZE+1);
		String tmp = request.getParameter("curPage");
		if(tmp==null){
			tmp="1";
		}
		curPage = Integer.parseInt(tmp);
		if(curPage>=pageCount) curPage = pageCount;
		boolean flag = rs.absolute((curPage-1)*PAGESIZE+1);
		int count = 0;
		
		do{
			if(count>=PAGESIZE)break;
			int id = rs.getInt(1);
			String songname = rs.getString(2);
			String singer = rs.getString(3);
			String album = rs.getString(4);
			String type = rs.getString(5);
			String path = rs.getString(6);
			count++;
			%>
		
		<tr align="left">
			<td><%=id%></td>
			<td ><a href="do.jsp"><%=songname%></a></td>
			<td ><a href=""><%=singer%></a></td>
			<td><%=album%></td>
			<td><%=type%></td>
			<td> <a href="DownloadServlet?path=<%=path%>">下载</a></td>
		</tr>

			<%
		}while(rs.next());
		con.close();
	}
	catch(Exception e){
		
	}
%>
</table>
<div id="more"><a href="">查看更多单曲结果</a></div>
<div id="page">
<a href = "1.jsp?curPage=1" >首页</a>
<a href = "1.jsp?curPage=<%=curPage-1%>" >上一页</a>
<a href = "1.jsp?curPage=<%=curPage+1%>" >下一页</a>
<a href = "1.jsp?curPage=<%=pageCount%>" >尾页</a>
第<%=curPage%>页/共<%=pageCount%>页
</div>
</div>
</body>
<html>



