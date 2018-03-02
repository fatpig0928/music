<%@page import="org.apache.jasper.tagplugins.jstl.core.Param"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>成功页</title>
<style type="text/css">
#register{
	margin-top: 200px;
	font-family: "方正水柱简体";
	font-size: 30px;
	margin-left:200px;
}
</style>
</head>

<body>
<div id="register">
		 <%
		    String username=request.getParameter("name");
			PrintWriter writer=response.getWriter();
			writer.write("欢迎"+username+"注册音乐网!");
			out.print("注册成功!");
		 %>
</div>
</body>
</html>