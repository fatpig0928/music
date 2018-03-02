<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<title>用户注册</title>
<style type="text/css">
*{
	margin:0px;
	padding:0px;
}
body{
	background: url(../images/register.jpg) no-repeat 0px 0px;
	font-family: 'Open Sans', sans-serif;
	font-family:"微软雅黑";
}
#register{
	width:350px;
	height:380px;
	background: #fff;
	float:right;
	margin-top:80px;
	margin-right: 220px;
}
h3{
	font-family: "方正水柱简体";
	font-size: 30px;
	color: #8a2a14;
	text-align: center;
	padding-top:30px;
	padding-bottom: 20px;
}
table{
	margin-left: 50px;
	font-size: 18px;
}
tr{
	height:30px;
}
.sub-1{
	background:url(../images/sub-3.png) no-repeat;
	border:none;
	height: 42px;
	width: 97px;
	margin-top: 20px;
}
.sub-2{
	background:url(../images/sub-4.png) no-repeat;
	border:none;
	height: 42px;
	width: 97px;
	margin-top: 20px;
	margin-left: 50px;
}
</style>
</head>
<body>
<div id="register">
<h3 align="center">用户注册</h3>
	<form  id="myform" method="post" action="register_check.jsp" >	
		<table align="center" >
			<tr>
				<td>用户名：</td>
				<td>
					<input type="text" name="username" id="name" /><font color="red">*</font>
				</td>
			</tr>
			<tr>
				<td>密码：</td>
				<td>
					<input type="password" name="password" id="pwd" /><font color="red">*</font>
				</td>
			</tr>
			<tr>
				<td>年龄：</td>
				<td>
					<input type="text" name="age" id="age"/>
				</td>
			</tr>
			<tr>
				<td>性别：</td>
				<td>
					<input type="radio" name="sex" id="man" value="m" />男
					<input type="radio" name="sex"  id="woman" value="f" />女
				</td>
			</tr>

			<tr>
				<td>邮箱：</td>
				<td>
					<input type="text" name="mail" id="mail" />
				</td>
			</tr>
			<tr>
				<td>手机号码：</td>
				<td>
					<input type="text" name="number" id="number" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="" onclick="checkPhone()" class="sub-1"/>
				</td>
				<td>
					<input type="reset" value=""  class="sub-2"/>
				</td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>