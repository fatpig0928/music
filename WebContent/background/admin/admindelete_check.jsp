<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
<meta charset="UTF-8">
<title>删除结果</title>
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
			String sql = "delete from admin where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
			ps.close();
			conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
	%>
	<br>
<script type='text/javascript'> alert('删除成功！'); 
			location.href='admindelete.jsp';</script>
</body>
</html>