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
	<link rel="stylesheet" href="/tracker/resources/css/jqgrid/ui.jqgrid.css" />
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
	<script src="/tracker/resources/js/jqgrid/jquery.jqGrid.min.js"></script>
	<script src="/tracker/resources/js/jqgrid/i18n/grid.locale-en.js"></script>	
	
	<!-- websocket js -->
	<script src="/tracker/resources/js/websocket/sockjs-0.3.4.min.js"></script>
	
	<!-- tracking js-->
	<!-- gpstracking div 영역에 있음 -->
		
	<!-- modal jQuery-->
	<script src="/tracker/resources/js/modernizr.js" ></script> 
	<script src="/tracker/resources/js/member.js" ></script> 
	
	<!-- chat -->
	<script src="/tracker/resources/js/websocket/chat.js" ></script>


	<script>
	wow = new WOW({}).init();
	</script>	
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
		            		<input type="hidden" id="userId" value="${ sessionScope.loginuser.id }" />
		            		<ul class="nav navbar-nav">
		            			<li>${ loginuser.name }님 환영합니다.
			            		<a href="/tracker/account/logout.action">로그아웃</a></li>
			            		<li><a id="button_open_dialog">1:1 상담</a></li>
								<li><a href="#header">Intro</a></li>
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
		            		<input type="hidden" id="userId" value="${ sessionScope.loginuser.id }" />
		            		<ul class="nav navbar-nav">			            		
		            			<li>${ loginuser.name }님 환영합니다.
			            		<a href="/tracker/account/logout.action">로그아웃</a></li>
			            		<li><a id="button_open_dialog">1:1 상담</a></li>
								<li><a href="#header">Intro</a></li>
								<li><a href="#managemember">회원관리</a></li>
								<li><a href="#equipment">장비관리</a></li>
								<li><a href="#products">Products</a></li>
								<li><a href="#gpstracker">GPS Tracker</a></li>
								<li><a href="/tracker/board/list.action">Support</a></li>
							</ul>
		            	</c:when>
		            	<c:otherwise>
		            		<ul class="nav navbar-nav">        	
			            		<li class="dialogForm"><a class="cd-signin" href="#Login">Login/Join</a></li>
			            		<li><a href="#header">Intro</a></li>
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
		
	<!-- 회원가입 && 로그인 -->
	<div class="cd-user-modal"> <!-- this is the entire modal form, including the background -->
		<div class="cd-user-modal-container"> <!-- this is the container wrapper -->
			<ul class="cd-switcher">
				<li><a href="#0">로그인</a></li>
				<li><a href="#0">회원가입</a></li>
			</ul>

			<div id="cd-login"> <!-- log in form -->
				<form class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-email" for="id">아이디</label>
						<input class="full-width has-padding has-border" id="id" type="text" placeholder="아이디">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="password">비밀번호</label>
						<input class="full-width has-padding has-border" id="password" type="password"  placeholder="패스워드">
						<a href="#0" class="hide-password">Hide</a>
						<span class="cd-error-message">Error message here!</span>
					</p>
					<div id="login_message"></div>
					
					<p class="fieldset">
						<input type="checkbox" id="remember-me" checked>
						<label for="remember-me">Remember me</label>
					</p>

					<p class="fieldset">
						<input id="loginUser" class="full-width" type="submit" value="로그인">
					</p>
				</form>
				<p class="cd-form-bottom-message"><a href="#0">Forgot your password?</a></p>
				<!-- <a href="#0" class="cd-close-form">Close</a> -->
			</div> <!-- cd-login -->

			<div id="cd-signup"> <!-- sign up form -->
				<form id="cd-form" class="cd-form" action="/tracker/member/register.action" method="POST">
					<p class="fieldset">
						<label class="image-replace cd-username" for="user_id">아이디</label>
						<input class="full-width has-padding has-border" id="id" name="id" type="text" placeholder="아이디">
					</p>
				
					<p class="fieldset">
						<label class="image-replace cd-username" for="name">사용자 이름</label>
						<input class="full-width has-padding has-border" id="name" name="name" type="text" placeholder="사용자 이름">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-email" for="email">E-mail</label>
						<input class="full-width has-padding has-border" id="email" name="email" type="text" placeholder="E-mail">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="user_password">비밀번호</label>
						<input class="full-width has-padding has-border" id="password" name="password" type="password"  placeholder="비밀번호">
						<a href="#0" class="hide-password">Hide</a>
						<span class="cd-error-message">Error message here!</span>
					</p>
					
					<p class="fieldset">
						<label class="image-replace cd-username" for="address">사용자 주소</label>
						<input class="full-width has-padding has-border" id="address" name="address" type="text" placeholder="사용자 주소">
						<span class="cd-error-message">Error message here!</span>
					</p>
					<div id="join_message"></div>
					<p class="fieldset">
						<input type="checkbox" id="accept-terms">
						<label for="accept-terms">I agree to the <a href="#0">Terms</a></label>
					</p>

					<p class="fieldset">
						<input id="createUser" class="full-width"  type="submit" value="회원가입">
					</p>
				</form>

				<!-- <a href="#0" class="cd-close-form">Close</a> -->
			</div> <!-- cd-signup -->

			<div id="cd-reset-password"> <!-- reset password form -->
				<p class="cd-form-message">Lost your password? Please enter your email address. You will receive a link to create a new password.</p>

				<form class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-email" for="reset-email">E-mail</label>
						<input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="Reset password">
					</p>
				</form>

				<p class="cd-form-bottom-message"><a href="#0">Back to log-in</a></p>
			</div> <!-- cd-reset-password -->
			<a href="#0" class="cd-close-form">Close</a>
		</div> <!-- cd-user-modal-container -->
	</div> 	<!-- /회원가입 && 로그인 -->
	
	<div class="slider">		
		<div id="about-slider">
			<div id="carousel-slider" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators visible-xs">
					<li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-slider" data-slide-to="1"></li>					
				</ol>

				<div class="carousel-inner">
					<div class="item active">						
						<img src="/tracker/resources/img/intro/intro_1.jpg" class="img-responsive" alt=""> 
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">								
								<h2>반려견을 위한 최선의 선택</h2>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">								
								<p>고성능 GPS를 통한 위치탐지 및 추적 시스템</p>
							</div>							
						</div>
				    </div>
			
				    <div class="item">
						<img src="/tracker/resources/img/intro/intro_2.jpg" class="img-responsive" alt=""> 
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">								
								<h2>반려견을 위한 최선의 선택</h2>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">								
								<p>고성능 GPS를 통한 위치탐지 및 추적 시스템</p>
							</div>							
						</div>
				    </div> 
				</div>
				
				<a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
					<i class="fa fa-angle-left"></i> 
				</a>
				
				<a class="right carousel-control hidden-xs" href="#carousel-slider" data-slide="next">
					<i class="fa fa-angle-right"></i> 
				</a>
			</div> <!--/#carousel-slider-->
		</div><!--/#about-slider-->
	</div><!--/#slider-->
		
	<div id="dialog" title="1:1 상담">
		<div id="data"></div>
		<div id="content">
			<input type="text" id="message" />
			<img id="sendBtn" src="/tracker/resources/img/button/submit.png" />
		</div>		
	</div><!--/#dialog-->
		
	<c:choose>		            	
        <c:when test="${ sessionScope.loginuser ne null && sessionScope.loginuser.active eq 'admin'}">
        	<div id="managemember">
				<div class="container">
					<div class="text-center">
						<h3>회원관리</h3>	
						<br /><br />
						<div class="CSSTableGenerator">
							<table>
								<tr>
									<td>아이디</td>
									<td>사용자 이름</td>
									<td>비밀번호</td>
									<td>사용자 구분</td>
									<td>가입 일자</td>
									<td>탈퇴 여부</td>
								</tr>
								<c:forEach var="member" items="${ members }">
									<tr>
										<td>${ member.id }</td>
										<td>${ member.name }</td>
										<td>${ member.password }</td>
										<td>${ member.active }</td>
										<td>${ member.regDate }</td>
										<c:choose>
											<c:when test="${ member.deleted  eq 1 }">
												<td>탈퇴</td>
											</c:when>
											<c:otherwise>
												<td style="color : red">사용중</td>
											</c:otherwise>
										</c:choose>
									</tr>
								</c:forEach>
							</table>
						</div>	   					
					</div>		
				</div>							
			</div>     		
		</c:when>
	</c:choose><!-- /회원관리 -->
	
	<!-- /#equipment -->
	<div id="equipment">
		<div class="container">
		<c:choose>		            	
				 <c:when test="${ sessionScope.loginuser ne null && sessionScope.loginuser.active eq 'admin'}">
			<div class="row">
				<div class="text-center">
				<br /><br /><br /><br /><br />
				
					<h3>장비관리</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit Lorem ipsum dolor sit<br>amet consectetur adipisicing elit</p>
				<div>
				  <table id="jqGrid"></table>
   				  <div id="jqGridPager"></div>  
				</div>
				
				</div>				
			</div>
				</c:when>
	 </c:choose>	
			 
		</div>
			<script src="/tracker/resources/js/equipment.js" ></script>
	</div>

	
	<div id="products">
		<div class="container">
			<div class="text-center">
				<h3>Product</h3>
				<p>제품소개</p>
			</div>
			<div class="row">    
			<c:choose>
				<c:when test="${ fn:length(equipments) ne 0 }">
					<c:forEach var="equipment" items="${ equipments }">
						<figure class="effect-chico">									
							<div class="col-md-3 col-xs-6 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">
								<h2>${ equipment.modelName }</h2>								
								<img src="/tracker/resources/img/product/${ equipment.savedFileName }" class="img-responsive" alt="">
								<p>
									제품구분 : ${ equipment.equipName }<br />									
									제품가격 : ￦ ${ equipment.equipPrice }<br />
									제품설명 : ${ equipment.equipContent }
								</p>
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
	</div><!--/#products-->

	<div id="gpstracker">
		<div class="container">
			<div class="text-center">
				<br /><br /><br /><br /><br />
				<h3>Gps Tracker</h3>
				<div id="map_view" class="container" style="width:600px;height:480px;float:left" >			
				</div>
				<div style="width:480px;height:480px;float:left">
					<table border="5" style="width:480px;height:480px;font-size:13pt;">
						<tr style="width:480px;height:40px">
							<td>
							</td>
							<td>
								<a href="/tracker/tracking/regist.action" >장비 등록</a>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="javascript:deletedOnEquip();" >장비 삭제</a>
							</td>
						</tr>
						<tr style="width:480px;height:40px">
							<td style="width:80px;text-align:center">번호</td> 
							<td style="padding-left:10px">
							<c:choose>		            	
				            	<c:when test="${ sessionScope.loginuser ne null && sessionScope.loginuser.active eq 'user'}">
									<a href="javascript:getSerialNumber();" >조회</a>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					            	<select id="serialNumber" width="100px">
					            		<option value="0" selected="selected">장비 선택</option>
						            		<c:forEach var="serialNumber" items="${ serialNumbers }">
												 <option value="${serialNumber}" >${serialNumber}</option>
											</c:forEach>
									</select>	
				            	</c:when>
				            	<c:otherwise>
								<select id="serialNumber" width="100px">
									<option value="0" selected="selected">장비 선택(other)</option>
								    <option value="1" >1번 장비</option>
								    <option value="2" >2번 장비</option>
								    <option value="3" >3번 장비</option>
								</select>	
				            	</c:otherwise>
				            </c:choose>
							
								&nbsp;&nbsp;&nbsp;&nbsp;
								<img src="/tracker/resources/img/button/startButton.png" onclick="javascript:trackingStart();" width="40px" height="40px">

								&nbsp;&nbsp;
								<img src="/tracker/resources/img/button/stopButton.png" onclick="javascript:trackingStop();" width="48px" height="48px">	
							</td>
						</tr>
						<tr style="width:480px;height:40px">
							<td style="width:80px;text-align:center">상태</td> 
							<td id="trackingStatus">
								<h4>추적 대기중</h4>
							</td>
						</tr>
						<tr style="width:480px;height:70px">
							<td style="width:80px;text-align:center">위도</td> 
							<td>
								<input type="text" id="latitude" style="padding-left:10px;width:400px;height:70px; font-size:28pt; font-weight:bold;" readonly="readonly" value="0.0"/>
							</td>
						</tr>
						<tr style="width:480px;height:70px">
							<td style="width:80px;text-align:center">경도</td> 
							<td>
								<input type="text" id="longitude" style="padding-left:10px;width:400px;height:70px; font-size:28pt; font-weight:bold;" readonly="readonly" value="0.0"/>
							</td>
						</tr>
						<tr style="width:480px;height:90px">
							<td rowspan="2" style="width:80px;text-align:center">주소</td> 
							<td>
								<textarea id="address1" style="padding-top:20px;width:400px;height:90px;font-size:15pt;text-align:center" readonly="readonly">
								</textarea>
							</td>
						</tr>
						<tr style="width:480px;height:90px">
							<td>
								<textarea id="address2" style="padding-top:20px;width:400px;height:90px;font-size:15pt;text-align:center" readonly="readonly">
								</textarea>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<script src="/tracker/resources/js/tracking.js"></script>
		<div>
			
		</div>
	</div><!--/#gpstracker-->
	<br /><br />
	
	<!-- footer -->
	<footer>	
		<div class="text-center">
			<div class="copyright">
				서울특별시 강남구 테헤란로 123 여삼빌딩 15층 | 사업자등록번호 : 111-11-11111 | 통신판매업신고번호 : 강남 제-1111호<br />
				설립자 : (주)트래커 | 대표자 : 김형식<br />
				TEL : 02-1111-1111 | FAX : 02-111-1111<br />
				개인정보책임자 : 신건식 | 이메일 : <a href="mailto:info@tracker.co.kr" target="_blank" style="text-decoration:none;">info@tracker.co.kr</a>
			</div>
		</div>									
	</footer>
	<!-- /footer -->
    
</body>
</html>
