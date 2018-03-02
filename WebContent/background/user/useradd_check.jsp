<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
<meta charset="UTF-8">
<title>添加结果</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="user" class="com.lyq.bean.User"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>
	<%
		try {
			com.ms.dao.DBCon db=new com.ms.dao.DBCon();
			Connection conn=db.getConn();
			String sql = "insert into user(username,password,age,sex,mail,number) values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setInt(3, user.getAge());
			ps.setString(4, user.getSex());
			ps.setString(5, user.getMail());
			ps.setString(6, user.getNumber());
			int row = ps.executeUpdate();
			if(row > 0){
				out.print("成功添加了 " + row + "首歌曲！");

			}
			ps.close();
			conn.close();
		} catch (Exception e) {
			out.print("用户信息添加失败！");
			e.printStackTrace();
		}
	%>
	<br>
<jsp:forward page = "userfind.jsp"></jsp:forward>
</body>
</html>