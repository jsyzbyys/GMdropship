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
        <link rel="stylesheet" href="css/ace.min.css">
        <style type="text/css">
            body,html{
                width: 100%;
                height: 100%;
                background: #fff;
            }
            li{
                list-style: none;
            }

            .main{margin-left: 190px;padding: 8px 20px 24px;}
            .main ul{overflow: hidden;}
            .main li{width: 25%;padding:0 2.5%;box-sizing: border-box;float:left;margin-bottom: 30px;}
            .main li p{font-size: 15px;color:#666;height: 36px;overflow: hidden;text-overflow: -o-ellipsis-lastline;overflow: hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;}
              .main li:hover,
           :focus {
                background-color: #f5f5f5;
                box-shadow: 2px 2px 5px #999;
            }
            .main li a{display:inline;}
            .main li span{color:#d72439;line-height: 40px;}
            .main li img{width: 100%;}
            .main h5{line-height: 40px;padding-left: 2%;box-sizing: border-box;font-size: 20px;}
        </style>
    </head>
    <body>
    
   

        <div class="main">
         <div class="panel panel-info">
        <form  class="navbar-form navbar-left" name="frm" action="product/list" method="post">
            <input type="hidden" id="currPage" name="currPage"/>     
        </form>
    </div>
        
            <ul>
            	 <c:forEach items="${page.data }" var="t" varStatus="status">
            	 	
            	 	<li>
                   			 <a href="product/detail?id=${t.id}">
                   			 <div class="img">
                   			 </div><img src="image/test.jpg"  alt="" />
                   			 <p>${t.title }</p>
                  			 <span>$ ${t.price }</span>
                   			 </a>
               		</li>
            	
            	 </c:forEach>
            </ul>	
            
        </div>
        
        <div class ="query">
	共${page.totalPage}页 第${page.currPage}页  
	<a href="javascript:go(1)">首页</a> 
	<c:if test="${page.currPage>1 }">
		<a href="javascript:go(${page.currPage-1})">
	</c:if>
	上一页
	<c:if test="${page.currPage>1 }">
		</a>
	</c:if> 
	<c:if test="${page.currPage<page.totalPage }">
		<a href="javascript:go(${page.currPage+1})">
	</c:if>
	下一页 
	<c:if test="${page.currPage>=page.totalPage }">
		</a>
	</c:if>	
	<a href="javascript:go(${page.totalPage})">末页</a>
</div>
</body>
<script src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.js"></script>
 <script>
	function go(currPage){
		$('#currPage').val(currPage)
		document.frm.submit();	
	}

</script>
</html>
