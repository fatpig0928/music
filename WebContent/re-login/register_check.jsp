<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<%@page import="java.io.*" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="user" class="com.lyq.bean.User" ></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>
	<%
		try {
			 Class.forName("com.mysql.jdbc.Driver");
		     String url="jdbc:mysql://localhost:3306/music";
		     String Username="root";
		     String Password="111111";
		     Connection conn = DriverManager.getConnection(url,Username,Password);
			String sql = "insert into user(username,password,age,sex,mail,number) values(?,?,?,?,?,?)";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句中的第1个参数赋值
			ps.setString(1, user.getUsername());
			// 对SQL语句中的第2个参数赋值
			ps.setString(2, user.getPassword());
			// 对SQL语句中的第3个参数赋值
			ps.setInt(3,user.getAge());
			// 对SQL语句中的第4个参数赋值
			ps.setString(4, user.getSex());
			ps.setString(5, user.getMail());
			ps.setString(6, user.getNumber());
			
			// 执行更新操作，返回所影响的行数
			int row = ps.executeUpdate();
			// 判断是否更新成功
			if(row > 0){
				// 更新成输出信息
				%>
        		<script type='text/javascript'>alert('注册成功！'); 
				location.href='../foreground/index2.jsp';</script>");
				exit;
        	<%
				
				
			}
			// 关闭PreparedStatement，释放资源
			ps.close();
			// 关闭Connection，释放资源
			conn.close();
		} catch (Exception e) {
			out.print("注册失败");
			e.printStackTrace();
		}
	%>
	<br>
</body>
</html>