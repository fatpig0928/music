<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="../style/backcss.css" media="all"/>
<title>后台</title>
<style type="text/css">
</style>
</head>
<frameset rows="180,*,80" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="top.jsp" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset cols="493,*"   frameborder="no" border="0" framespacing="0">
   <frame src="left.html" name="leftFrame" scrolling="no" noresize="noresize" id="leftFrame" target="right" />
    <frame src="right.jsp" name="right" id="right" title="right" scrolling="no" />
  </frameset>
  <frame src="foot.jsp" name="foot" scrolling="no">
</frameset>
<noframes><body>
</body></noframes>
</html>
