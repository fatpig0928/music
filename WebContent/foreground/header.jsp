<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="../style/div.css" media="all"/>
<title>Insert title here</title>

</head>
<body>
<div id="header">
	 	<div id=login>
	 		<li><a href="../foreground/login/login.jsp" class="menu">登录</a></li>
	 		<li><a href="../foreground/login/register.jsp" class="menu">注册</a></li>
	 	</div>
	 	<div id="search">
	 		<form action="../1.jsp" method="post" >
				<input name="name" type="text"  id="stext"/>
				<input type="submit" value=" "  id="sub">
				<%request.setAttribute("name","name"); %>
			</form>
	 	</div>
	 	<div id="sidemenu">
             <ul>
               <li><a href="index2s.jsp" class="menu">首页</a></li>
               <li><a href="#about" class="menu">歌手</a></li>                               
               <li><a href="#services" class="menu">榜单</a></li>
               <li><a href="#works" class="menu">MV</a></li>
               <li><a href="#blog" class="menu">歌单</a></li>
               <li><a href="#contact" class="menu">商城</a></li>
               <li><a href="#contact" class="menu">粉丝聚焦</a></li>
             </ul>
         </div>
	 	<div id="logo">       
             <img src="../images/logo.png" alt="">
        </div>         <!-- logo -->
	</div> <!-- header -->
	
</body>
</html>