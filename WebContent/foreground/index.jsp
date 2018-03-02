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
	<%@ include file="header.jsp" %>

	
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