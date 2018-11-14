<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <base href="<%=basePath%>">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/ace.min.css">
        <link rel="stylesheet" href="css/ace-skins.min.css">
        <link rel="stylesheet" href="css/ace-responsive.min.css">
        <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
        <style type="text/css">
            body,html{
                width: 100%;
                height: 100%;
                background: #fff;
            }
            img{
                width: 200px;
                height: 200px;
            }
            .imglist{
                width: 100%;
                height: 250px;
                list-style: none;
                margin-left: 100px;

            }
            .imglist a{
                display: block;
                width: 100%;
                height: 100%;
            }
            .imglist img{
                float: left;
                margin-right: 20px;
            }
            .imglist .right,.imglist label{
                float: left;
            }
            .imglist label{
                width: 25px;
                height: 25px;
                margin-right: 10px;
            }
        </style>
    </head>
    <body>
        <div id="main-content" class="clearfix">
            <div id="page-content" class="clearfix" style="margin-top: 45px;">
             <div class="page-header position-relative">
              <h1 style="color: #2679b5;">借卖方<small><i class="icon-double-angle-right"></i> 心愿单</small></h1>
            </div>
            <button class="btn btn-success" id="del"><i class="icon-trash icon-4x icon-only">delete</i></button>
            <ul>
            
            <c:forEach items="${list }" var="t">
                <li class="imglist">

                    
                    <label><input type="checkbox" class="input" name="pick" value="${t.wid }"><span class="lbl"></span></label>
                    <a href="product/detail?id=${t.pro.id}"><img src="image/test.jpg"  alt="" /></a>
                    <div class="right">
                        <p>${t.pro.title }</p>
                        <span class="red">$${t.pro.price }</span>
                        <p>sku:${t.pro.sku}</p>
                        <input type="checkbox" />
                    </div>
                    

                </li>
             </c:forEach>  
                
                
                
               
            </ul>
        </div>
        </div>
        <script type="text/javascript">
            $(function(){
            	$('#del').click(function(){
            		console.log('aaa')
					var arr = new Array();
            		$('input:checkbox[name=pick]:checked').each(function(k){
            	   	 if(k >= 0){
            	        arr.push($(this).val()); 
            	   	 }
            		})
            		
            		$.ajax({
						type:'post',
						url:'wish/del',
						data:{"arr":arr},
						dateType:'json',
						traditional :true,
						success:function(data){
							if(data == 1){
								alert("Success！")
				            	setTimeout(function(){
				             	  window.location.href = "wish/list";
				           		 },300)
							}
				            
						}
					})
            		
            	})
            })
        </script>
    </body>
</html>
