<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>借卖方注册界面</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/ace.min.css">
<link rel="stylesheet" href="css/ace-skins.min.css">
<link rel="stylesheet" href="css/ace-responsive.min.css">
<link rel="stylesheet" href="webuploader/webuploader.css">
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<style type="text/css">
body, html {
	width: 100%;
	height: 100%;
	background: #fff;
}

.Register {
	width: 50%;
	margin: auto;
}
</style>
</head>
<body>
	<div id="main-content" class="clearfix">
		<div id="page-content" class="clearfix">
			<div class="page-header position-relative">
				<h1 style="color: #2679b5;">
					借卖方商<small><i class="icon-double-angle-right"></i> 用户账号注册</small>
				</h1>
			</div>
			<form action="bvo/bvoAdd" method="post">
				<div class="Register">
					<div>
						<label class="green">用户名:</label><input type="text" id="bvoname" name="bvoname">
						<input type="button" class="btn  btn-success save" id="registerComf" value="检测是否可用">
					</div>
					<div>
						<label class="green">邮箱:</label><input type="text" id="bvomail" name="bvomail">
					</div>
					<div>
						<label class="green">密码:</label><input type="text" id="bvopwd" name="bvopwd">
					</div>
					<div>
						<label class="green">性别:</label> <select id="bvosex" name="bvosex">
							<option>男</option>
							<option>女</option>
						</select>
					</div>
					<div>
						<label class="green">年龄:</label><input type="text" id="bvoage" name="bvoage">
					</div>
					<button class="btn  btn-success save" type="submit">注册</button>
					<button class="btn  btn-success save" onclick="gotoBvoLogin()">返回登陆界面</button>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function gotoBvoLogin() {
			window.location.href = "bvoLogin.jsp"
		}
		$(function() {
			$('#registerComf').click(function() {
				var bvoname = $('#bvoname').val();
				$.getJSON('bvo/registerComf', {'bvoname' : bvoname,}, function(data) {
					if (data == 0) {
						alert("用户名可用!");
					} else if (data == 1) {
						alert("用户名存在!");		
					} 
				})
			})
		})
	</script>
</body>
</html>