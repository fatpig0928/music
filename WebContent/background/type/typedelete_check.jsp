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
	<jsp:useBean id="music" class="com.lyq.bean.Music"></jsp:useBean>
	<jsp:setProperty property="*" name="music"/>
	<%
	    int typeid = Integer.valueOf(request.getParameter("typeid"));
		try {
			com.ms.dao.DBCon db=new com.ms.dao.DBCon();
			Connection conn=db.getConn();
			String sql = "delete from type where typeid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, typeid);
			ps.executeUpdate();
			ps.close();
			conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
	%>
	<br>
<script type='text/javascript'> alert('删除成功！'); 
			location.href='typedelete.jsp';</script>
</body>
</html>