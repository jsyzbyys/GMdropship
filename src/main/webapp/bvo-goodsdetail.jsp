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
        <meta charset="utf-8">
        <base href="<%=basePath%>">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/ace.min.css">
        <link rel="stylesheet" href="css/ace-skins.min.css">
        <link rel="stylesheet" href="css/ace-responsive.min.css">
        <style type="text/css">
            body,html{
                width: 100%;
                height: 100%;
                background: #fff;
            }
            .goods-header{
                overflow: hidden;
            }
            .goods-header-left{
                width: 30%;
                float: left;
            }
            .goods-header-right{
                width: 70%;
                float: left;
            }
            .goods-header-left img{
                width: 100%;
            }

        </style>
    </head>
    <body>

        <div id="main-content" class="clearfix">
            <div id="page-content" class="clearfix">

            <div class="goods-header">
                <div class="goods-header-left"><img src="image/test.jpg" alt="" /></div>
                <div class="goods-header-right">
                    <p>商品名:${detail.title }</p>
                    <p class="red">单价￥:${detail.price }</p>
                    <p>商品编号:${detail.sku }</p>
                    <p>供货商：${detail.mvo_id.companyname1 }</p>
                    <p>库存：${detail.stock }件</p>
                    
                    <div class="available">
								<div class="input-group" style="width: 125px;">
								<span class="input-group-btn">
									<button type="button" class="btn btn-default" onclick="numChange(false)">-</button>
								</span>
									<input type="text" class="form-control" value="1" id="numInput" style="text-align:center;" onchange="onlyNum(this)"/>
								<span class="input-group-btn">
									<button type="button" class="btn btn-default" onclick="numChange(true)">+</button>
								</span>
								</div>
							</div>
						<script>
								function onlyNum(input) {
									if (/\D/.test(input.value)) {
										input.value="1";
									}
								}

								function numChange(b) {
									var num = parseInt($("#numInput").val());
									if (b) {
										$("#numInput").val(num+1);
									}
									else if (num > 1) {
										$("#numInput").val(num - 1);
									}
								}
							</script>
				
                <a href="javascript:addCart('${detail.mvo_id.mvoid }','${detail.title }','${detail.price }','${detail.sku}')" >立即下单</a>
                 <a href="javascript:addWish('${detail.mvo_id.mvoid  }','${detail.sku}')" >添加到心愿单</a>
                   
                </div>
            </div>

                <h4 class="lighter">Item Description</h4>
                <div class="tabbable">
                    <ul class="nav nav-tabs" id="myTab">
                        <li class="active"><a data-toggle="tab" href="#ebay"> ebay description</a></li>
                        <li class=""><a data-toggle="tab" href="#Amazon">Amazon description</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="ebay" class="tab-pane active">
                            Raw denim you probably haven't heard of them jean shorts Austin.
                        </div>
                        <div id="Amazon" class="tab-pane">
                            Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid.
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </body>
    <script src="js/jquery-1.9.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>			
	
    function addCart(bid,title,price,sku){
		
		var amount = $('#numInput').val()
					$.ajax({
						type:'post',
						url:'order/addorder',
						dataType:'json',
						data:{"brand":bid,"title":title,"price":price,"sku":sku,"amount":amount},
						success:function(data){
							if(data==2){
								alert("原订单已发货，已为您创建新订单")
								location.reload();
								}
							else{
								alert("订单更新成功")
								location.reload();
							}
				    		
								
					}
				})
	}	
    
  function addWish(bid,sku){
		
					$.ajax({
						type:'post',
						url:'order/addwish',
						dataType:'json',
						data:{"brand_id":bid,"sku":sku},
						success:function(data){
							if(data==0){
								alert("心愿添加成功")
							}else{
								alert("请不要重复添加相同产品")
							}
							
					}
				})
	}	
	
</script>
</html>
