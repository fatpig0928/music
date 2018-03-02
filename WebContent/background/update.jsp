<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style type="text/css">
body{
	font-family:"微软雅黑";
	background:url("../images/body.png");
	margin:50px 0px 80px 30px; 
}
table{
	border:solid 2px #add9c0;
	width:700px;
	height:auto;
}
td{
font-size: 17px;
}
h2{margin: 0px;}
#content{
	width:700px;
	height:500px;
	padding-top:30px;
	
}
#page{
	text-align: center;
	padding-top:10px;
}
</style>
<html>
	<head>
		<title>歌曲查询</title>
	</head>
	<body>
	<div id="content">
	<table border="1" spacing="2">
		<tr bgcolor="white">
			<td align="center" colspan="7" >
				<h2>所有歌曲信息</h2>
			</td>
		</tr>
		<tr align="center" bgcolor="#ff6644" >
			<td width="10px"><b>ID</b></td>
			<td width="50px"><b>歌名</b></td>
			<td width="20px"><b>歌手</b></td>
			<td width="10px"><b>专辑</b></td>
			<td width="30px"><b>类型</b></td>
			<td width="100px"><b>路径</b></td>
			<td width="20px">修改</td>
		</tr>
<%!
	public static final String DRIVER = "com.mysql.jdbc.Driver";
	public static final String USER = "root";
	public static final String PASS = "111111";
	public static final String URL = "jdbc:mysql://localhost:3306/music";
	public static final int PAGESIZE = 5;
	int pageCount;
	int curPage = 1;
%>
<%
	//一页放5个
	String user = null;
	String pass = null;
	try{
		Class.forName(DRIVER);
		Connection con = DriverManager.getConnection(URL,USER,PASS);
		String sql = "select *  from music";
		PreparedStatement stat = con.prepareStatement(sql,ResultSet.TYPE_FORWARD_ONLY,ResultSet.CONCUR_READ_ONLY);
		ResultSet rs = stat.executeQuery();
		rs.last();
		int size = rs.getRow();
		pageCount = (size%PAGESIZE==0)?(size/PAGESIZE):(size/PAGESIZE+1);
		String tmp = request.getParameter("curPage");
		if(tmp==null){
			tmp="1";
		}
		curPage = Integer.parseInt(tmp);
		if(curPage>=pageCount) curPage = pageCount;
		boolean flag = rs.absolute((curPage-1)*PAGESIZE+1);
		int count = 0;
		
		do{
			if(count>=PAGESIZE)break;
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String singer = rs.getString(3);
			String album = rs.getString(4);
			String type = rs.getString(5);
			String path = rs.getString(6);
			count++;
			%>
		<form action="update_check.jsp" method="post" >
		<input type="hidden" name="id" value="<%=id%>">
		<tr bgcolor="white">
			<td><%=id%></td>
			<td><input type="text" name="name"  value="<%=name%>"size="11"></td>
			<td><input type="text" name="singer" value="<%=singer%>" size="5"></td>
			<td><input type="text" name="album" value="<%=album%>" size="15"></td>
			<td><input type="text" name="type" value="<%=type%>" size="3"></td>
			<td><input type="text" name="path" value="<%=path%>" size="35"></td>
			<td align="center"><input type="submit" value="修　改"></td>
		</tr>
		</form>
			<%
		}while(rs.next());
		con.close();
	}
	catch(Exception e){
		
	}
%>
</table>
<div id="page">
<a href = "update.jsp?curPage=1" >首页</a>
<a href = "update.jsp?curPage=<%=curPage-1%>" >上一页</a>
<a href = "update.jsp?curPage=<%=curPage+1%>" >下一页</a>
<a href = "update.jsp?curPage=<%=pageCount%>" >尾页</a>
第<%=curPage%>页/共<%=pageCount%>页
</div>
</div>
</body>
<html>