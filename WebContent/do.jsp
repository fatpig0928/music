<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Old School Cassette Player with HTML5 Audio</title>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Old School Cassette Player with HTML5 Audio: Vintage format meets modern web tech: an HTML5 audio player with realistic controls" />
        <meta name="keywords" content="cassette, html5, audio, player, css3, buttons, sounds, vintage, old school, javascript, jquery" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/knobKnob.css" />
		<script type="text/javascript" src="js/modernizr.custom.69142.js"></script> 
		<style type="text/css">
		h3{
			margin-left:900px;
		}
		
		
		</style>
    </head>
    <body>
    <div id="header">
	 	<div id=login>
	 		<li><a href="#home" class="menu">登录</a></li>
	 		<li><a href="#home" class="menu">注册</a></li>
	 	</div>
	 	<div id="search">
	 		<form action="search-check.jsp" method="post" >
				<input name="name" type="text"  id="stext"/>
				<input type="submit" value=" "  id="sub">
				<%request.setAttribute("name","name"); %>
			</form>
	 	</div>
	 	<div id="sidemenu">
             <ul>
               <li><a href="foreground/index2.jsp" class="menu">首页</a></li>
               <li><a href="#about" class="menu">歌手</a></li>                          

      
               <li><a href="#services" class="menu">榜单</a></li>
               <li><a href="#works" class="menu">MV</a></li>
               <li><a href="#blog" class="menu">歌单</a></li>
               <li><a href="#contact" class="menu">商城</a></li>
               <li><a href="#contact" class="menu">粉丝聚焦</a></li>
             </ul>
         </div>
	 	<div id="logo">       
             <img src="images/logo.png" alt="">
        </div>         <!-- logo -->
	</div> <!-- header -->
	
		<%
	// 获取application中存放 的visitorCount值
	Integer visitorCount = (Integer) application.getAttribute("visitorCount");
	// 判断visitorCount是不为空
	if (visitorCount == null) {
		visitorCount = 1;
	}else{
		visitorCount++; // 来访数量自增
	}
	// 将来访数量保存到application
	application.setAttribute("visitorCount", visitorCount);
%>
<h3>点击人数 ：<%=visitorCount %></h3>
	
	
	
	
	
	<div id="content">
        <div id="container">
		
			<!-- Codrops top bar --><!--/ Codrops top bar -->
			
			

			<div id="vc-container" class="vc-container">
				<div class="vc-tape-wrapper">
					<div class="vc-tape">
						<div class="vc-tape-back">
							<div class="vc-tape-wheel vc-tape-wheel-left"><div></div></div>
							<div class="vc-tape-wheel vc-tape-wheel-right"><div></div></div>
						</div>
						<div class="vc-tape-front vc-tape-side-a">
							<span>A</span>
						</div>
						<div class="vc-tape-front vc-tape-side-b">
							<span>B</span>
						</div>
					</div>
				</div>
				<div class="vc-loader"></div>
			</div><!-- //vc-container -->
		
		

	</div><!-- //container -->
		</div>
		<script src="http://libs.baidu.com/jquery/1.7.2/jquery.min.js"></script>
		<!-- KnobKnob by Martin Angelov : https://github.com/martinaglv/KnobKnob -->
		<script src="js/transform.js"></script>
		<script src="js/knobKnob.jquery.js"></script>

		<script type="text/javascript" src="js/jquery.cassette.js"></script>
		<script type="text/javascript">	
			$(function() {
				
				$( '#vc-container' ).cassette();
						
				});
		</script>
	
    </body>
</html>