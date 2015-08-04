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
	<title>회원정보수정</title>

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
	@import url(http://fonts.googleapis.com/css?family=Open+Sans:300,400,700);

	*{margin:0;padding:0;}
	
	body{
	  background:#567;
	  font-family:'Open Sans',sans-serif;
	}
	
	.button{
	  width:100px;
	  background:#3399cc;
	  display:block;
	  margin:0 auto;
	  margin-top:1%;
	  padding:10px;
	  text-align:center;
	  text-decoration:none;
	  color:#fff;
	  cursor:pointer;
	  transition:background .3s;
	  -webkit-transition:background .3s;
	}
	
	.button:hover{
	  background:#2288bb;
	}
	
	#login{
	  width:400px;
	  margin:0 auto;
	  margin-top:100px;
	  margin-bottom:2%;
	  transition:opacity 1s;
	  -webkit-transition:opacity 1s;
	}
	
	#login h1{
	  background:#3399cc;
	  padding:20px 0;
	  font-size:140%;
	  font-weight:300;
	  text-align:center;
	  color:#fff;
	}
	
	form{
	  background:#f0f0f0;
	  padding:6% 4%;
	}
	
	input[type="text"],input[type="password"]{
	  width:92%;
	  background:#fff;
	  margin-bottom:4%;
	  border:1px solid #ccc;
	  padding:4%;
	  font-family:'Open Sans',sans-serif;
	  font-size:95%;
	  color:#555;
	}
	
	input[type="submit"]{
	  width:92%;
	  background:#3399cc;
	  border:1 solid;
	  padding:4%;
	  font-family:'Open Sans',sans-serif;
	  font-size:100%;
	  color:#fff;
	  cursor:pointer;
	  transition:background .3s;
	  -webkit-transition:background .3s;
	}
	
	input[type="submit"]:hover{
	  background:#2288bb;
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

	<div id="login">
		<h1>회원정보 수정</h1>
		<form id="edit-form" method="post" action="/tracker/member/edit.action">
			<label class="image-replace cd-username" for="user_id">아이디</label> 
			<input type="text" id="id" name="id" value="${member.id}" readonly="readonly" placeholder="${member.id}" />		
			
			<label class="image-replace cd-username" for="name">사용자 이름</label>
			<input type="text" id="name" name="name" value="${member.name}" placeholder="${member.name}" />
			
			<label class="image-replace cd-email" for="email">E-mail</label>
			<input type="text" id="email" name="email" value="${member.email}" placeholder="${member.email}" />
			
			<label class="image-replace cd-password" for="user_password">비밀번호</label>
			<input type="text" id="password" name="password" value="${member.password}" placeholder="${member.password}" />
			
			<label class="image-replace cd-username" for="address">사용자 주소</label>
			<input type="text" id="address" name="address" value="${member.address}" placeholder="${member.address}" />
			
			<div id="join_message"></div>
			
			<input type="submit" value="수정" /><br />
			<input type="submit" value="탈퇴" />
		</form>
	</div>
    
</body>
</html>
