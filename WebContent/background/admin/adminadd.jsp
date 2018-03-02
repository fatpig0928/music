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
			if(name.value == ""){
				alert("姓名不能为空");
				return false;
			}
			if(pwd.value == ""){
				alert("密码不能为空");
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
	<form action="adminadd_check.jsp" method="post" onsubmit="return check(this);">
		<table  width="450">
			<tr>
				<td align="center" colspan="2">
					<h2>添加管理员信息</h2>
					<hr>
				</td>
			</tr>
			<tr>
				<td align="right">姓名：</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td align="right">密码：</td>
				<td><input type="text" name="pwd" /></td>
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