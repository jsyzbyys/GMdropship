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
<title>初始界面</title>
</head>
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

<body>
	<div id="main-content" class="clearfix">
		<div id="page-content" class="clearfix">
			<div class="page-header position-relative">
				<h1 style="color: #2679b5;">
					跨境电商借卖品台<small><i class="icon-double-angle-right"></i>欢迎您的到来！</small>
				</h1>
			</div>
			<div class="Register">
				<div>
					<label class="green">请选择您的身份:</label>
				</div>
				<a type="button" class="btn  btn-success save" href="adminLogin.jsp" >管理员</a>
				<a type="button" class="btn  btn-success save" href="mvoLogin.jsp" >品牌商</a>
				<a type="button" class="btn  btn-success save" href="bvoLogin.jsp" >借卖方</a>
			</div>

		</div>
	</div>

</body>

</html>