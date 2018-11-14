<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*" pageEncoding="utf-8"%>
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
<title>借卖方登陆界面</title>
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
					借卖方<small><i class="icon-double-angle-right"></i> 账号登录</small>
				</h1>
			</div>
			<form action="" method="post">
				<div class="Register">
					<div>
						<label class="green">用户名:</label>
						<input type="text" id="bvoname" name="bvoname">
					</div>
					<div>
						<label class="green">密码:</label>
						<input type="password" id="bvopwd" name="bvopwd">
					</div>
					<input type="button" class="btn  btn-success save" id="BvoLogin" value="登录">
					<a type="button" class="btn  btn-success save" href="bvoRegister.jsp" >注册</a>
					<a type="button" class="btn  btn-success save" href="index.jsp" >主界面</a>
				</div>
			</form>
		</div>
	</div>

<script type="text/javascript">
$(function() {
	$('#BvoLogin').click(function() {
		var bvoname = $('#bvoname').val();
		var bvopwd = $('#bvopwd').val();
		$.getJSON('bvo/bvoLogin', {
			'bvoname' : bvoname,
			'bvopwd' : bvopwd
		}, function(data) {
			if (data == 0) {
				alert("登录成功");
				location.href = 'bvo/showRightUp';
			} else if (data == 1) {
				alert("用户名错误");
			} else if (data == 2) {
				alert("密码错误");
			}
		})
	})
})
</script>

</body>



</html>


























