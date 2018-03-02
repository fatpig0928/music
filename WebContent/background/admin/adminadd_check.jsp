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
<style type="text/css">
body{
	background-image:url("../../images/body.png");
	
}
</style>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="admin" class="com.lyq.bean.Admin"></jsp:useBean>
	<jsp:setProperty property="*" name="admin"/>
	<%
		try {
			com.ms.dao.DBCon db=new com.ms.dao.DBCon();
			Connection conn=db.getConn();
			String sql = "insert into admin(name,pwd) values(?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, admin.getName());
			ps.setString(2, admin.getPwd());
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
<jsp:forward page = "adminfind.jsp"></jsp:forward>
</body>
</html>