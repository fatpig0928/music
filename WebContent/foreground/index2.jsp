<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" rel="stylesheet" href="../style/div.css" media="all"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>音乐频道</title>
</head>
<body>
<div id="wrapper">
	<div id="header">
	 	<div id=login>
	 		<li><a href="index.jsp" class="menu">退出登录</a></li>
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
               <li><a href="index2.jsp" class="menu">首页</a></li>
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

	
	 <div class="content" id="home">
		<%@ include file="content.html" %>
        </div>
        
        <div id="backslider-1">
        	<img src="../images/backslider.png" alt="">
        </div>
	</div> 
	

	

   
    <%@ include file="preference.jsp" %>
    <%@ include file="newsong.jsp" %>
    <%@ include file="mv.jsp" %>
    <%@ include file="news.jsp" %>
	<%@ include file="recommend.jsp" %>
	<%@ include file="footer.jsp" %>
    
    
    
<div id="lianjie"><a href="../background/alogin/adminlogin.jsp">管理员入口</a></div>
</div>    <!-- wrapper -->
</body>
</html>