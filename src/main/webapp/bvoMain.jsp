<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="bvo/showRightUp" method="post" >
		<ul>
			<li>id:${b.bvoid}</li>
			<li>姓名：${b.bvoname}</li>
			<li>邮箱：${b.bvomail}</li>
			<li>密码：${b.bvopwd}</li>
			<li>性别：${b.bvosex}</li>
			<li>年龄：${b.bvoage}</li>
			<li>钱包是否开通：${b.bvohavewallet}</li>
		</ul>
	</form>
</body>
</html>