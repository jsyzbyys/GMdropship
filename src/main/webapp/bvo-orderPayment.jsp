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
    </head>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/ace.min.css">
    <link rel="stylesheet" href="css/ace-skins.min.css">
    <link rel="stylesheet" href="css/ace-responsive.min.css">
  <style>
      body,html{
          width: 100%;
          height: 100%;
          background: #fff;
      }

  </style>
  
    <body>
<div id="main-content" class="clearfix">
<div id="page-content" class="clearfix">
    <div class="page-header position-relative">
              <h1 style="color: #2679b5;">借卖方<small><i class="icon-double-angle-right"></i> 支付订单</small></h1>
            </div>

<h4>商品名称：${order.title }</h4>

 <form class="form-horizontal" style="width: 60%; margin:20px auto">
            <div class="control-group">
             <label class="control-label" for="form-field-1">Receiver</label>
             <div class="controls">
                 <input type="text" id="form-field-4" placeholder="请输入收件人">
             </div>
         </div>
            <div class="control-group">
              <label class="control-label" for="form-field-1">Ship To</label>
                <div class="controls">
                    <input type="text" id="form-field-4" placeholder="请输入地址">
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <select>
                        <option value="0">State</option>
                        <option value="1">AL</option>
                    </select>
                </div>
             </div>
            <div class="control-group">
                    <div class="controls">
                        <select>
                            <option value="0">city</option>
                            <option value="1">AL</option>
                        </select>
                    </div>
               </div>
           <div class="control-group">
              <label class="control-label" for="form-field-1">Quantity</label>
              <div class="controls">
                <input type="text" id="form-field-4"  value="${order.amount }">
              	<input type="hidden" id="price" value="${order.price }"/>
              	<input type="hidden" id="amount" value="${order.amount }"/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="form-field-1">Mobile</label>
              <div class="controls">
                <input type="text" id="form-field-4" placeholder="请输入联系电话">
              </div>
            </div>
             <div class="control-group">
              <label class="control-label" for="form-field-1">ZIP code</label>
              <div class="controls">
                <input type="text" id="form-field-4" placeholder="请输入邮编">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="form-field-1">Shipping Method</label>
              <div class="controls">
                <label>
                  <input name="form-field-radio" type="radio" id="ten"><span class="lbl"> 2-5天  $10 </span><br>
                </label>
                <label>
                  <input name="form-field-radio" type="radio" id="five"><span class="lbl"> 5-10天  $5 </span><br>
                </label>
              </div>
            </div>


        </form>

              <h3 style="text-align: center">
                Total：<b class="red" id="total">$${order.price*order.amount }</b>
              </h3>

<div style="text-align: center"><button class="btn btn-primary" data-toggle="modal" data-target="#myModal"><i class="icon-beaker"></i> Pay Now</button></div>



<!-- Modal -->
<div class="modal fade hide" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Payment</h4>
      </div>
      <div class="modal-body" >
          <form class="form-horizontal">
              <div class="control-group">
                  <h3>Total:<span class="red" id="paytotal">$56767</span></h3>
              </div>
              <div class="control-group">
                  Payment Method：
                  <div>
                      <input name="form-field-radio" type="radio" style="opacity: 1;position: inherit"><img src="image/gmc.png" alt="">My Wallet
                      <div class="blue">Account Balance:$6775</div>
                  </div>
                  <div>
                      <input name="form-field-radio" type="radio" style="opacity: 1;position: inherit"><img src="image/paycal@2x.png" alt="">Paypal
                      <div class="blue">Total amount you should pay include payment processing fee:$5765</div>
                  </div>

              </div>

            <div class="control-group">
              Enter Password：<input type="password" id="form-field-2" placeholder="Password">
            </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary sure" data-dismiss="modal">确定</button>
      </div>
    </div>
  </div>
</div>
  </div></div>
    <script src="js/jquery-1.9.1.js"></script>

    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootbox.min.js"></script>
    <script>
      $(function(){
        $('.sure').click(function(){
            bootbox.alert("Success！")
            setTimeout(function(){
               window.location.href = "bvo-orderlist.html";
            },2000)

        })
        
        $('#five').click(function(){
        	var total = $('#amount').val()*$('#price').val()+5.0;
        	$('#total').html("$"+total);
        	$('#paytotal').html("$"+total);
        })
        
        $('#ten').click(function(){
        	var total = $('#amount').val()*$('#price').val()+10.0;
        	$('#total').html("$"+total);
        	$('#paytotal').html("$"+total);
        })
})



    </script>
    </body>
</html>
