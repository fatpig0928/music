<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
body{
	background: url(../../images/login-1.jpg) no-repeat 0px 0px;
	font-family: 'Open Sans', sans-serif;
}
h1{
	text-align: center;
	margin: 3% auto 0 auto;
	font-family: "方正水柱简体";
	font-size: 50px;
	color: #8a2a14;
}
.login-form {
	background: #2b2b36;
	position: relative;
	width: 30%;
	height:400px;
	margin: 1.5% auto 0 auto;
	text-align: center;
}
#close{
  	background: url(../../images/close.png) no-repeat 0px 0px;
  	cursor: pointer;
  	width: 20px;
  	height: 20px;
  	position: absolute;
  	left: 20px;
  	top: 20px;
 }
label.lbl-1 {
  	background: #6756ea;
  	width: 20px;
  	height: 20px;
  	display: block;
  	float: right;
  	border-radius: 50%;
  	margin: 16px 10px 0px 0px;
}
label.lbl-2 {
  	background: #ea569a;
  	width: 20px;
  	height: 20px;
  	display: block;
  	float: right;
  	border-radius: 50%;
   	margin: 16px 10px 0px 0px;
}
label.lbl-3 {
  	background: #f1c85f;
  	width: 20px;
  	height: 20px;
  	display: block;
  	float: right;
  	border-radius: 50%;
  	margin: 16px 10px 0px 0px;
}

.head img {
	width: 100%;
}
.avtar img {
  	margin: 2em 0 0;
  	background: url(../../images/avtar.png);
}
.head-info {
  	padding: 5px 0;
  	text-align: center;
  	font-weight: 600;
  	font-size: 2em;
  	color: #fff;
  	background: #23232e;
  	height: 50px;
}
input[type="text"] {
	  width: 70%;
	  padding: 1em 2em 1em 3em;
	  color: #9199aa;
	  font-size: 18px;
	  outline: none;
	  background: url(../../images/adm.png) no-repeat 10px 15px;
	  border: none;
	  font-weight: 100;
	  border-bottom: 1px solid#484856;
	  margin-top: 2em;
}
 input[type="password"]{
	  width: 70%;
	  padding: 1em 2em 1em 3em;
	  color: #dd3e3e;
	  font-size: 18px;
	  outline: none;
	  background: url(../../images/key.png) no-repeat 10px 23px;
	  border: none;
	  font-weight: 100;
	  border-bottom: 1px solid#484856;
	  margin-bottom: 1em;
 }
.key {
   background: url(../../images/pass.png) no-repeat 447px 17px;
}
input[type="submit"]{
  	font-size: 30px;
  	color: #fff;
  	outline: none;
  	border: none;
  	background: #3ea751;
  	width: 100%;
  	padding: 18px 0;
	cursor: pointer;
}
input[type="submit"]:hover {
	background: #ff2775;
}

</style>
<title>用户登录</title>
</head>
<body>
 <h1>用户登录</h1>

<div class="login-form">

	<div id="close"> </div>
		<div class="head-info">
			<label class="lbl-1"> </label>
			<label class="lbl-2"> </label>
			<label class="lbl-3"> </label>
		</div>
			<div class="clear"> </div>
	<div class="avtar">
		<img src="../../images/avtar.png"  width="79" height="79"/>
	</div>
			 <form action="login_check.jsp" method="post">
					<input name="username"  type="text" value="Username" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Username';}"  />
						<div class="key">
					 <input name="password"  type="password" value="Password" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Password';}" />
						</div>
			
	<div class="signin">
		<input type="submit" value="submit" >
	</div>
	</form>
</div>
</body>
</html>