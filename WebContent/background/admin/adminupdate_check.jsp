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
	<jsp:useBean id="admin" class="com.lyq.bean.Admin"></jsp:useBean>
	<jsp:setProperty property="*" name="admin"/>
	<%
	    int id = Integer.valueOf(request.getParameter("id"));
		try {
			com.ms.dao.DBCon db=new com.ms.dao.DBCon();
			Connection conn=db.getConn();
			String sql = "update admin set name=?,pwd=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, admin.getName());
			ps.setString(2, admin.getPwd());
			ps.setInt(3, id);
			ps.executeUpdate();
			ps.close();
			conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
	%>
	<br>
	
<script type='text/javascript'> alert('修改成功！'); 
			location.href='adminupdate.jsp';</script>
</body>
</html>