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
<link type="text/css" rel="stylesheet" href="../style/backcss.css" media="all"/>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="music" class="com.lyq.bean.Music"></jsp:useBean>
	<jsp:setProperty property="*" name="music"/>
	<%
		try {
			com.ms.dao.DBCon db=new com.ms.dao.DBCon();
			Connection conn=db.getConn();
			String sql = "insert into music(name,singername,album,type,path) values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, music.getName());
			ps.setString(2, music.getSingername());
			ps.setString(3, music.getAlbum());
			ps.setString(4, music.getType());
			ps.setString(5, music.getPath());
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
<jsp:forward page = "find.jsp"></jsp:forward>
</body>
</html>