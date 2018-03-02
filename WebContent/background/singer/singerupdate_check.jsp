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
	<jsp:useBean id="singer" class="com.lyq.bean.Singer"></jsp:useBean>
	<jsp:setProperty property="*" name="singer"/>
	<%
	    int id = Integer.valueOf(request.getParameter("id"));
		try {
			com.ms.dao.DBCon db=new com.ms.dao.DBCon();
			Connection conn=db.getConn();
			String sql = "update singer set singer=?,nation=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, singer.getSinger());
			ps.setString(2, singer.getNation());
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
			location.href='singerupdate.jsp';</script>
</body>
</html>