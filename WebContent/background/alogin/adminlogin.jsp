<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<style>
*{
	margin:0;
	padding:0;
}
body{
	background:url("../../images/login-1.jpg");
}
#login {
	width: 250px;
	height: 270px;
	padding: 15px;
	padding-top:30px;
	background:url(../../images/login.png) no-repeat;
	margin-left:550px;
	margin-top: 150px;

}


#login label {
	float: left;
	width: 80px;
	color: #62260e;
	font-size:16px;
	margin-top:7px;
	margin-left:7px;
	
}

#login .txt_field {
	display: block;
	height: 29px;
	width: 132px;
	color: #000;
	font-size: 12px;
	padding: 0 3px;
	font-variant: normal;
	line-height: normal;
	line-height: 30px;
	background:url(../../images/txtfield.png) no-repeat ;
	margin-bottom:8px;
	border:none;
}
#login .sub{
	float: right;
	display: block;
 	height: 42px;
	width: 97px;
	font-size: 12px;
	color: #000;
	border: none;
	background:url(../../images/sub-1.png) no-repeat;
	margin-top:10px;
	margin-right:75px;

}
#login h3 {
	color: #9d4920;
	font-size:33px;
	padding-bottom: 15px;
	margin-bottom: 20px;
	border-bottom: 1px solid #b6aa99;
	font-family: "方正水柱简体";
}
</style>
</head>
<body>
 <div id="login">
	 <h3>管理员登录</h3>
    <form action="adminlogin_check.jsp" method="post">
    
             		  <label>姓名:</label>
             		  <input name="name"  type="text" size="10" maxlength="30" class="txt_field"/>
             		  <label>密码:</label>
             		  <input name="pwd"  type="password" size="10" maxlength="30" class="txt_field"/>
             		  <input name="登录" type="submit" value=""  class="sub"/> 
   		</form>
</div>
</body>
</html>