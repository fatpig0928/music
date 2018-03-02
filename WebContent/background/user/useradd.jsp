<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加歌曲信息</title>
<script type="text/javascript">
	function check(form){
		with(form){
			if(typename.value == ""){
				alert("类型不能为空");
				return false;
			}
			return true;
		}
	}
</script>
<style type="text/css">
body{
	font-family:"微软雅黑";
	background-image:url("../../images/body.png");
	
}
table{
	border:solid 2px #add9c0;
	width:500px;
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
	margin:50px 0px 80px 60px; 
	
}
</style>
</head>
<body>
<div id="content">
	<form action="useradd_check.jsp" method="post" onsubmit="return check(this);">
		<table  width="450">
			<tr>
				<td align="center" colspan="2">
					<h2>添加用户信息</h2>
					<hr>
				</td>
			</tr>
			<tr>
				<td align="right">用户名：</td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td align="right">密码：</td>
				<td><input type="text" name="password" /></td>
			</tr>
			<tr>
				<td align="right">年龄：</td>
				<td><input type="text" name="age" /></td>
			</tr>
			<tr>
				<td align="right">性别：</td>
				<td>
					<input type="radio" name="sex" id="man" value="m" />男
					<input type="radio" name="sex"  id="woman" value="f" />女
				</td>
			</tr>
			<tr>
				<td align="right">邮箱：</td>
				<td><input type="text" name="mail" /></td>
			</tr>
			<tr>
				<td align="right">手机号码：</td>
				<td><input type="text" name="number" /></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<input type="submit" value="添　加">
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>