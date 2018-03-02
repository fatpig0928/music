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
	<jsp:useBean id="type" class="com.lyq.bean.Type"></jsp:useBean>
	<jsp:setProperty property="*" name="type"/>
	<%
		try {
			com.ms.dao.DBCon db=new com.ms.dao.DBCon();
			Connection conn=db.getConn();
			String sql = "insert into type(typename,rhythm,origin,rep,artist) values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, type.getTypename());
			ps.setString(2, type.getRhythm());
			ps.setString(3, type.getOrigin());
			ps.setString(4, type.getRep());
			ps.setString(5, type.getArtist());
			int row = ps.executeUpdate();
			if(row > 0){
				out.print("成功添加了 " + row + "首歌曲！");

			}
			ps.close();
			conn.close();
		} catch (Exception e) {
			out.print("歌曲信息添加失败！");
			e.printStackTrace();
		}
	%>
	<br>
<jsp:forward page = "typefind.jsp"></jsp:forward>
</body>
</html>