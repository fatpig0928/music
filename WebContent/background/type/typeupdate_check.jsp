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
	<jsp:useBean id="type" class="com.lyq.bean.Type"></jsp:useBean>
	<jsp:setProperty property="*" name="type"/>
	<%
	    int typeid = Integer.valueOf(request.getParameter("typeid"));
		try {
			com.ms.dao.DBCon db=new com.ms.dao.DBCon();
			Connection conn=db.getConn();
			String sql = "update type set typename=?,rhythm=?,origin=?,rep=? ,artist=? where typeid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, type.getTypename());
			ps.setString(2, type.getRhythm());
			ps.setString(3, type.getOrigin());
			ps.setString(4, type.getRep());
			ps.setString(5, type.getArtist());
			ps.setInt(6, typeid);
			ps.executeUpdate();
			ps.close();
			conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
	%>
	<br>
<script type='text/javascript'> alert('修改成功！'); 
			location.href='typeupdate.jsp';</script>
</body>
</html>