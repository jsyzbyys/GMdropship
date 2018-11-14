<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
    	<base href="<%=basePath%>">
        <meta charset="utf-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/ace.min.css">
        <link rel="stylesheet" href="css/ace-skins.min.css">
        <link rel="stylesheet" href="css/ace-responsive.min.css">

    </head>
    <style>
        body,html{
            width: 100%;
            height: 100%;
            background: #fff;
        }


    .inputName{
        width: 50%;
        margin: 0 auto;
        font-size: 20px;
    }

  </style>
    <body>

 <div id="main-content" class="clearfix">
  <div id="page-content" class="clearfix">
           <div class="page-header position-relative">
              <h1 style="color: #2679b5;">借卖方<small><i class="icon-double-angle-right"></i> 我的信息</small></h1>
            </div>
    <div class="inputName">
        <div style="margin-bottom: 40px">Username:${bvo.bvoname}</div>
        <div><label class="green">Name:</label><input type="text" id="realname" value="${bvo_info.realname }"></div>
        <div><label class="green">Email:</label><input type="text" id="email" value="${bvo_info.email }"></div>
        <div><label class="green">Phone:</label><input type="text" id="phone" value="${bvo_info.phone }"></div>
        <button  id="save" class="btn  btn-success save">save</button>
        <button class="btn  btn-pink" onclick="myshop()">My Stores</button>
    </div>



    </div></div>



</body>
    <script src="js/jquery-1.9.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootbox.min.js"></script>
    <script type="text/javascript">
    $(function(){
    			
    	if( ${check}==0){
    			alert("请补全个人信息")
    		}
    				
    	$('#save').click(function(){
    		var realname = $('#realname').val();
    		var email = $('#email').val();
    		var phone =$('#phone').val();
    		$.ajax({
    			type:'post',
				url:'bvo/savebvo',
				dataType:'json',
				data:{"realname":realname,"email":email,"phone":phone},
				success:function(data){
					 alert("保存成功")
				}
    			
    		})
 
    })
 })
   
</script>
</html>
