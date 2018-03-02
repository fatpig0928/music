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
<link type="text/css" rel="stylesheet" href="../style/backcss.css" media="all"/>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="music" class="com.lyq.bean.Music"></jsp:useBean>
	<jsp:setProperty property="*" name="music"/>
	<%
	    int id = Integer.valueOf(request.getParameter("id"));
		try {
			com.ms.dao.DBCon db=new com.ms.dao.DBCon();
			Connection conn=db.getConn();
			String sql = "update music set name=?,album=?,type=?,path=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, music.getName());
			ps.setString(2, music.getAlbum());
			ps.setString(3, music.getType());
			ps.setString(4, music.getPath());
			ps.setInt(5, id);
			ps.executeUpdate();
			ps.close();
			conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
	%>
	<br>
<script type='text/javascript'> alert('修改成功！'); 
			location.href='update.jsp';</script>
</body>
</html>