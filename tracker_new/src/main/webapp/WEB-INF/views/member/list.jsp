<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="com.tracker.model.dto.Equipment" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<!-- modified 2015-08-03 -->
<html lang="ko" class="no-js">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>Tracker</title>

	<!-- Bootstrap -->
	<link rel="stylesheet" href="/tracker/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" href="/tracker/resources/css/font-awesome.min.css" />
	<link rel="stylesheet" href="/tracker/resources/css/animate.css" />
	<link rel="stylesheet" href="/tracker/resources/css/overwrite.css" />
	<link rel="stylesheet" href="/tracker/resources/css/animate.min.css" /> 
	<link rel="stylesheet" href="/tracker/resources/css/style.css" />	
	<link rel="stylesheet" href="/tracker/resources/css/jquery-ui/jquery-ui.css" />	
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	<!-- googleapis -->
	<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/tracker/resources/js/jquery-2.1.1.min.js"></script>		
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/tracker/resources/js/bootstrap.min.js"></script>	
	<script src="/tracker/resources/js/parallax.min.js"></script>
	<script src="/tracker/resources/js/wow.min.js"></script>
	<script src="/tracker/resources/js/jquery.easing.min.js"></script>
	<script src="/tracker/resources/js/fliplightbox.min.js"></script>
	<script src="/tracker/resources/js/functions.js"></script>
	<script src="/tracker/resources/js/jquery-ui/jquery-ui.js"></script>
	
	<!-- websocket js -->
	<script src="/tracker/resources/js/websocket/sockjs-0.3.4.min.js"></script>
	
	<!-- tracking js-->
	<!-- gpstracking div 영역에 있음 -->
		
	<!-- modal jQuery-->
	<script src="/tracker/resources/js/modernizr.js" ></script> 
	<script src="/tracker/resources/js/main.js" ></script> 
	
	<!-- chat -->
	<script src="/tracker/resources/js/websocket/chat.js" ></script>
		
	<script>
	wow = new WOW({}).init();	
	</script>	
	
	<style type="text/css">
	body{
	  background:#3399cc;
	  font-family:'Open Sans',sans-serif;
	}
	.CSSTableGenerator {
		margin:0px;padding:0px;
		width:90%;
		box-shadow: 10px 10px 5px #888888;
		border:1px solid #000000;
		
		-moz-border-radius-bottomleft:14px;
		-webkit-border-bottom-left-radius:14px;
		border-bottom-left-radius:14px;
		
		-moz-border-radius-bottomright:14px;
		-webkit-border-bottom-right-radius:14px;
		border-bottom-right-radius:14px;
		
		-moz-border-radius-topright:14px;
		-webkit-border-top-right-radius:14px;
		border-top-right-radius:14px;
		
		-moz-border-radius-topleft:14px;
		-webkit-border-top-left-radius:14px;
		border-top-left-radius:14px;
	}.CSSTableGenerator table{
	    border-collapse: collapse;
	        border-spacing: 0;
		width:85%;
		height:850%;
		margin:200px;padding:0px;
	}.CSSTableGenerator tr:last-child td:last-child {
		-moz-border-radius-bottomright:14px;
		-webkit-border-bottom-right-radius:14px;
		border-bottom-right-radius:14px;
	}
	.CSSTableGenerator table tr:first-child td:first-child {
		-moz-border-radius-topleft:14px;
		-webkit-border-top-left-radius:14px;
		border-top-left-radius:14px;
	}
	.CSSTableGenerator table tr:first-child td:last-child {
		-moz-border-radius-topright:14px;
		-webkit-border-top-right-radius:14px;
		border-top-right-radius:14px;
	}.CSSTableGenerator tr:last-child td:first-child{
		-moz-border-radius-bottomleft:14px;
		-webkit-border-bottom-left-radius:14px;
		border-bottom-left-radius:14px;
	}.CSSTableGenerator tr:hover td{
		background-color:#ffffff;
			
	
	}
	.CSSTableGenerator td{
		vertical-align:middle;
		
		background-color:#aad4ff;
	
		border:1px solid #000000;
		border-width:0px 1px 1px 0px;
		text-align:left;
		padding:7px;
		font-size:10px;
		font-family:Arial;
		font-weight:normal;
		color:#000000;
	}.CSSTableGenerator tr:last-child td{
		border-width:0px 1px 0px 0px;
	}.CSSTableGenerator tr td:last-child{
		border-width:0px 0px 1px 0px;
	}.CSSTableGenerator tr:last-child td:last-child{
		border-width:0px 0px 0px 0px;
	}
	.CSSTableGenerator tr:first-child td{
			background:-o-linear-gradient(bottom, #005fbf 5%, #003f7f 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #005fbf), color-stop(1, #003f7f) );
		background:-moz-linear-gradient( center top, #005fbf 5%, #003f7f 100% );
		filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#005fbf", endColorstr="#003f7f");	background: -o-linear-gradient(top,#005fbf,003f7f);
	
		background-color:#005fbf;
		border:0px solid #000000;
		text-align:center;
		border-width:0px 0px 1px 1px;
		font-size:14px;
		font-family:Helvetica;
		font-weight:bold;
		color:#ffffff;
	}
	.CSSTableGenerator tr:first-child:hover td{
		background:-o-linear-gradient(bottom, #005fbf 5%, #003f7f 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #005fbf), color-stop(1, #003f7f) );
		background:-moz-linear-gradient( center top, #005fbf 5%, #003f7f 100% );
		filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#005fbf", endColorstr="#003f7f");	background: -o-linear-gradient(top,#005fbf,003f7f);
	
		background-color:#005fbf;
	}
	.CSSTableGenerator tr:first-child td:first-child{
		border-width:0px 0px 1px 0px;
	}
	.CSSTableGenerator tr:first-child td:last-child{
		border-width:0px 0px 1px 1px;
	}
	</style>
</head>
<body>
	<!-- header -->
	<header id="header">
		<nav class="navbar navbar-fixed-top" role="banner">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/tracker/home.action">Tracker</a>
				</div>
				<div class="collapse navbar-collapse navbar-right">					
					<c:choose>		            	
		            	<c:when test="${ sessionScope.loginuser ne null && sessionScope.loginuser.active eq 'user'}">
		            		<ul class="nav navbar-nav">
		            			<li>${ loginuser.id }님 환영합니다.
			            		<a href="/tracker/account/logout.action">로그아웃</a></li>
			            		<li><a id="button_open_dialog">1:1 상담</a></li>
								<li><a href="#header">Intro</a></li>
								<li><a href="#our-team">Company</a></li>
								<li><a href="#products">Products</a></li>
								<li><a href="#gpstracker">GPS Tracker</a></li>
								<li><a href="/tracker/board/list.action">Support</a></li>
								<li>
									<c:url value="/member/view.action" var="viewUrl">
        								<c:param name="id" value="${ sessionScope.loginuser.id }" />
        							</c:url>
        							<a href="${ viewUrl }">My Page</a>
								</li>
							</ul>
		            	</c:when>
		            	<c:when test="${ sessionScope.loginuser ne null && sessionScope.loginuser.active eq 'admin'}">
		            		<ul class="nav navbar-nav">			            		
		            			<li>${ loginuser.id }님 환영합니다.
			            		<a href="/tracker/account/logout.action">로그아웃</a></li>
			            		<li><a id="button_open_dialog">1:1 상담</a></li>
								<li><a href="#header">Intro</a></li>
								<li><a href="#">회원관리</a></li>
								<li><a href="#">장비관리</a></li>
								<li><a href="#our-team">Company</a></li>
								<li><a href="#products">Products</a></li>
								<li><a href="#gpstracker">GPS Tracker</a></li>
								<li><a href="/tracker/board/list.action">Support</a></li>
							</ul>
		            	</c:when>
		            	<c:otherwise>
		            		<ul class="nav navbar-nav">        	
			            		<li class="dialogForm"><a class="cd-signin" href="#Login">Login/Join</a></li>
			            		<li><a href="#header">Intro</a></li>
								<li><a href="#our-team">Company</a></li>
								<li><a href="#products">Products</a></li>
								<li><a href="#gpstracker">GPS Tracker</a></li>
								<li><a href="/tracker/board/list.action">Support</a></li>
							</ul>
		            	</c:otherwise>
		            </c:choose>
		            
				</div>
			</div>
			<!--/container-->
		</nav>
		<!--/nav-->
	</header>
	<!--/header-->
   <div class="CSSTableGenerator" >
        <table >
            <tr>
                <td> 아이디 </td>
                <td> 사용자 이름 </td>
                <td> 비밀번호 </td>
                <td> 사용자 구분 </td>
                <td> 가입 일자 </td>
                <td> 탈퇴 여부 </td>
            </tr>
	        <c:forEach var="member" items="${members }">   
	            <tr>
	                <td> ${ member.id } </td>
	                <td> ${member.name} </td>
	                <td> ${member.password} </td>
	                <td> ${member.active} </td>
	                <td> ${member.regDate} </td>
	                <td> ${member.deleted} </td>
	            </tr>
	       </c:forEach> 
        </table>
    </div>
</body>
</html>









