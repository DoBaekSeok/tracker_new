<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

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
				<ul class="nav navbar-nav">
					<li><a href="#header">Intro</a></li>
					<li><a href="#mypage">My Page</a></li>
					<li><a href="#managemember">회원관리</a></li>
					<li><a href="/tracker/manageequipment/equipmentlist.action">장비관리</a></li>
					<li><a href="/tracker/company/company.action">Company</a></li>
					<li><a href="/tracker/product/product.action">Products</a></li>
					<li><a href="/tracker/tracking/tracking.action">GPS Tracker</a></li>
					<li><a href="/tracker/board/list.action">Support</a></li>
					<li class="dialogForm" ><a class="cd-signin" href="#Login">Login</a></li>
					<li class="dialogForm"><a class="cd-signup" href="#Join" >Join</a></li>
				</ul>
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
						<input class="full-width has-padding has-border" id="password" type="text"  placeholder="패스워드">
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
						<input class="full-width has-padding has-border" id="password" name="password" type="text"  placeholder="비밀번호">
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
