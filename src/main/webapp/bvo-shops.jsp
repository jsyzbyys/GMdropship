<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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

    </head>
    <style>
        body,html{
            width: 100%;
            height: 100%;
            background: #fff;
        }

        .content{
            width: 50%;
            margin:20px auto;
        }
        .shop{
            width: 80%;
            margin-top: 50px;

        }
    </style>
    <body>
<div id="main-content" class="clearfix">
  <div id="page-content" class="clearfix">
      <h3 class="header smaller lighter red">Add a new store</h3>
        <div class="content">
            <div class="gray shop">Set up API connection with your store by account authorisation</div>

            <button class="btn btn-primary btn-block shop" id="am">Amazon</button><br>
            <button class="btn btn-primary btn-block shop" id="eb">eBay</button>
			<input type="hidden" id="website" name="website" />
            <div class="goodsname hide control-group">
            	
                <div><label>Store Name</label><input type="text" id="storename" ></div>
                <div><label>Seller ID</label><input type="text" id=""></div>
                <div><label>Marketplace ID</label><input type="text"></div>
                <div><label>MWS Auth Token</label><input type="text"></div>
                <div class="button save"><button class="btn" style="margin-right: 10px">cancel</button><button class="btn btn-primary">save</button></div>
            	
            </div>
        </div>
    </div>
    </div>
    <script type="text/javascript">
    $(function(){
        $(".shop").click(function(event) {
            $(".goodscontent h3").text($(this).text());
            $(".shop").hide();
            $(".goodsname").show();
        });
        
        $(".save").click(function(){
        	var storename = $('#storename').val();
        	var website = $('#website').val();
        	window.location.href = "store/add?storeName="+storename+"&website="+website;
  
        });
        
        $('#am').click(function(){
        	$('#website').val('amamzon');
        	console.log($('#website').val());
        });
        
        $('#eb').click(function(){
        	$('#website').val('ebay');
        	console.log($('#website').val());
        })
        
        
        
    })
    </script>
    </body>
</html>
