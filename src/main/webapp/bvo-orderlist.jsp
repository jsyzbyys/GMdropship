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

    .info div{
        float: right;
    }

  </style>
    <body>
<div id="main-content" class="clearfix">
<div id="page-content" class="clearfix">

    <div class="page-header position-relative">
      <h1 style="color: #2679b5;">借卖方<small><i class="icon-double-angle-right"></i> 订单管理</small></h1>
    </div>
  <form class="form-search" action="order/list" type="post">
    Title：
    <input type="text" class="input-medium search-query" id="title" name="title" value="${order.title }">
    <button  class="btn btn-purple btn-small">Search <i class="icon-search icon-on-right"></i></button>
  </form>
  <a href="#" class="btn  btn-success"  style="margin-bottom: 30px">
    <i class="icon-refresh"></i>
    Pull Orders
  </a>

<div class="tabbable">
      <ul class="nav nav-tabs" id="myTab">
        <li class="active"><a data-toggle="tab" href="#AwaitingPayment"> Awaiting Payment</a></li>
        <li class=""><a data-toggle="tab" href="#AwaitingShipment"> Awaiting Shipment</a></li>
        <li class=""><a data-toggle="tab" href="#shipped">Shiped</a></li>
        <li class=""><a data-toggle="tab" href="#complete">Completed Orders</a></li>
        <li class=""><a data-toggle="tab" href="#canceled">Cancelled Orders</a></li>
      </ul>
      <div class="tab-content">
        <div id="AwaitingPayment" class="tab-pane active">
          <p>
          <table id="table_bug_report" class="table table-striped table-bordered table-hover">
          <thead>
            <tr>
            <th class="center">
              <label><input type="checkbox" class="ace-checkbox-2"><span class="lbl"></span></label>
            </th>
            <th>Title</th>
            <th>Price</th>
            <th class="hidden-480">QTY</th>
            <th>Sku</th>
            <th class="hidden-480">Order No</th>
            <th class="hidden-480">Total</th>
            <th> </th>
            </tr>
          </thead>

          <tbody>
            <c:forEach items="${list }" var="t">
            <c:if test="${t.status==0 }">
            <tr>
              <td class="center">
                <label><input type="checkbox" class="input"><span class="lbl"></span></label>
              </td>
              <td><a href="bvo-goodsdetail.html">${t.title }</a></td>
              <td>${ t.price}</td>
              <td class="hidden-480">${t.amount}</td>
              <td class="hidden-phone">${t.sku}</td>
              <td class="hidden-480">${t.id}</td>
              <td>$ ${t.price*t.amount }</td>
              <td>
                 <a href="order/pay?id=${t.id }">Pay Now</a>
              </td>
            </tr>
            </c:if>
			</c:forEach>
			</tbody>
			
            </table>
          </p>
        </div>
        <div id="AwaitingShipment" class="tab-pane">
          <p>
          <table id="table_bug_report" class="table table-striped table-bordered table-hover">
          <thead>
            <tr>
            <th class="center">
              <label><input type="checkbox" class="ace-checkbox-2"><span class="lbl"></span></label>
            </th>
            <th>Title</th>
            <th>Price</th>
            <th class="hidden-480">QTY</th>
            <th>Sku</th>
            <th>Order No</th>
            <th class="hidden-480">Total</th>

            </tr>
          </thead>

          <tbody>
            <c:forEach items="${list }" var="t">
            <c:if test="${t.status==1 }">
            <tr>
              <td class="center">
                <label><input type="checkbox" class="input"><span class="lbl"></span></label>
              </td>
              <td><a href="bvo-goodsdetail.html">${t.title }</a></td>
              <td>${ t.price}</td>
              <td class="hidden-480">${t.amount}</td>
              <td class="hidden-phone">${t.sku}</td>
              <td class="hidden-480">${t.id}</td>
              <td>$ ${t.price*t.amount }</td>
              <td>
                 <a href="bvo-orderPayment.html">Pay Now</a>
              </td>
            </tr>
            </c:if>
			</c:forEach>
			</tbody>
			
            </table>
          </p>
        </div>
        <div id="shipped" class="tab-pane">
          <p>
            <table id="table_bug_report" class="table table-striped table-bordered table-hover">
              <thead>
                <tr>
                  <th class="center">
                    <label><input type="checkbox" class="ace-checkbox-2"><span class="lbl"></span></label>
                  </th>
                  <th>Title</th>
                  <th>Price</th>
                  <th>QTY</th>
                  <th>Sku</th>
                  <th>Order No</th>
                  <th>Total</th>
                  <th>Tracking No</th>

                </tr>
              </thead>

              <tbody>
            <c:forEach items="${list }" var="t">
            <c:if test="${t.status==2 }">
            <tr>
              <td class="center">
                <label><input type="checkbox" class="input"><span class="lbl"></span></label>
              </td>
              <td><a href="bvo-goodsdetail.html">${t.title }</a></td>
              <td>${ t.price}</td>
              <td class="hidden-480">${t.amount}</td>
              <td class="hidden-phone">${t.sku}</td>
              <td class="hidden-480">${t.id}</td>
              <td>$ ${t.price*t.amount }</td>
              <td>
                 <a href="bvo-orderPayment.html">Pay Now</a>
              </td>
            </tr>
            </c:if>
			</c:forEach>
            </tbody>

            </table>
          </p>
        </div>
        <div id="complete" class="tab-pane">
          <p>
            <table id="table_bug_report" class="table table-striped table-bordered table-hover">
              <thead>
                <tr>
                  <th class="center">
                    <label><input type="checkbox" class="ace-checkbox-2"><span class="lbl"></span></label>
                  </th>
                  <th>Title</th>
                  <th>Price</th>
                  <th>QTY</th>
                  <th>Sku</th>
                  <th>Order No</th>
                  <th>Total</th>
                  <th>Tracking No</th>

                </tr>
              </thead>

              <tbody>
            <c:forEach items="${list }" var="t">
            <c:if test="${t.status==3 }">
            <tr>
              <td class="center">
                <label><input type="checkbox" class="input"><span class="lbl"></span></label>
              </td>
              <td><a href="bvo-goodsdetail.html">${t.title }</a></td>
              <td>${ t.price}</td>
              <td class="hidden-480">${t.amount}</td>
              <td class="hidden-phone">${t.sku}</td>
              <td class="hidden-480">${t.id}</td>
              <td>$ ${t.price*t.amount }</td>
              <td>
                 <a href="bvo-orderPayment.html">Pay Now</a>
              </td>
            </tr>
            </c:if>
			</c:forEach>
			</tbody>

            </table>
          </p>
        </div>
         <div id="canceled" class="tab-pane">
          <p>
            <table id="table_bug_report" class="table table-striped table-bordered table-hover">
              <thead>
                <tr>
                  <th class="center">
                    <label><input type="checkbox" class="ace-checkbox-2"><span class="lbl"></span></label>
                  </th>
                  <th>Title</th>
                  <th>Price</th>
                  <th class="hidden-480">QTY</th>
                  <th>	Sku</th>
                  <th class="hidden-480">Order No</th>
                  <th class="hidden-480">Total</th>
                </tr>
              </thead>

              <tbody>
            <c:forEach items="${list }" var="t">
            <c:if test="${t.status==4 }">
            <tr>
              <td class="center">
                <label><input type="checkbox" class="input"><span class="lbl"></span></label>
              </td>
              <td><a href="bvo-goodsdetail.html">${t.title }</a></td>
              <td>${ t.price}</td>
              <td class="hidden-480">${t.amount}</td>
              <td class="hidden-phone">${t.sku}</td>
              <td class="hidden-480">${t.id}</td>
              <td>$ ${t.price*t.amount }</td>
              <td>
                 <a href="bvo-orderPayment.html">Pay Now</a>
              </td>
            </tr>
            </c:if>
			</c:forEach>
			</tbody>

            </table>
          </p>
        </div>
      </div>
  </div>
  </div></div>

    <script src="js/jquery-1.9.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
      $(function(){

        $('.ace-checkbox-2').each(function(){
              $('.ace-checkbox-2').change(function(){
                if($(this).prop('checked')){
                 $(this).parents('.tab-pane').find('.input').prop('checked',true);
               }else{
                $(this).parents('.tab-pane').find('.input').prop('checked',false);
              }
          })

        })

})



    </script>
    </body>
</html>
