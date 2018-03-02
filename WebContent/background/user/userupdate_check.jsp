<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
<meta charset="UTF-8">
<title>修改结果</title>
<style type="text/css">
body{
	background:url("../../images/body.png");
}

</style>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="user" class="com.lyq.bean.User"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>
	<%
	    int id = Integer.valueOf(request.getParameter("id"));
		try {
			com.ms.dao.DBCon db=new com.ms.dao.DBCon();
			Connection conn=db.getConn();
			String sql = "update user set username=?,password=?,age=?,sex=?,mail=?,number=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setInt(3, user.getAge());
			ps.setString(4, user.getSex());
			ps.setString(5, user.getMail());
			ps.setString(6, user.getNumber());
			ps.setInt(7, id);
			ps.executeUpdate();
			ps.close();
			conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
	%>
	<br>
<script type='text/javascript'> alert('修改成功！'); 
			location.href='userupdate.jsp';</script>
</body>
</html>