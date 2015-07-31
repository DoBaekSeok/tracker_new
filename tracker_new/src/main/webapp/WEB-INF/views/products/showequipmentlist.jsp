<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="com.tracker.model.dto.Equipment" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>

<html lang="ko">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>Bikin - HTML Bootstrap Template</title>

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
	<script>
	wow = new WOW({}).init();
	</script>	
</head>
<body>	

	<!-- header -->
	<c:import url="/WEB-INF/views/include/header.jsp" />
	
	<div id="products">
		<div class="container">
			<div class="text-center">
				<h3>Product</h3>
				<p>Preview!!!</p>
			</div>
			<div class="row">    
			<c:choose>
				<c:when test="${ fn:length(equipments) ne 0 }">
					<c:forEach var="equipment" items="${ equipments }">
						<figure class="effect-chico">									
							<div class="col-md-3 col-xs-6 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">
								<h2>${ equipment.modelName }</h2>						
								<a href="/tracker/resources/img/work/5.jpg" class="flipLightBox">
								<img src="/tracker/resources/img/work/5.jpg" class="img-responsive" alt="">
								</a>
								<p>${ equipment.equipContent }</p>
							</div>
						</figure>				
					</c:forEach>
				</c:when>
				<c:otherwise>		
						<div class="text-center">
							<h2>등록된 제품이 없습니다.</h2>					
						</div>									
				</c:otherwise>
			</c:choose>
			</div>
		</div>
	</div>
		
	<footer>	
		<div class="text-center">
			<div class="copyright">
				&copy; 2015 <a target="_blank" href="http://bootstraptaste.com/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">bootstraptaste</a>. All Rights Reserved.
			</div>
		</div>									
	</footer>
    
</body>
</html>
