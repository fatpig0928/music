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
	background:url("../../images/body.png");
}

</style>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="singer" class="com.lyq.bean.Singer"></jsp:useBean>
	<jsp:setProperty property="*" name="singer"/>
	<%
		try {
			com.ms.dao.DBCon db=new com.ms.dao.DBCon();
			Connection conn=db.getConn();
			String sql = "insert into singer(id,singer,nation) values(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, singer.getId());
			ps.setString(2, singer.getSinger());
			ps.setString(3, singer.getNation());
			int row = ps.executeUpdate();
			if(row > 0){
				out.print("成功添加了 " + row + "个歌手！");

			}
			ps.close();
			conn.close();
		} catch (Exception e) {
			out.print("歌手信息添加失败！");
			e.printStackTrace();
		}
	%>
	<br>
<jsp:forward page = "singerfind.jsp"></jsp:forward>
</body>
</html>