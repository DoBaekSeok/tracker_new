<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="kor">
<meta name="viewport" content="width=1020">
<meta content="origin-when-crossorigin" name="referrer" />

<title>회원가입</title>
<!-- <link rel="search" type="application/opensearchdescription+xml"
	href="/opensearch.xml" title="GitHub">
<link rel="fluid-icon" href="https://github.com/fluidicon.png"
	title="GitHub">
<link rel="apple-touch-icon" sizes="57x57"
	href="/apple-touch-icon-114.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/apple-touch-icon-114.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/apple-touch-icon-144.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="/apple-touch-icon-144.png">
 -->
<meta name="browser-errors-url"
	content="https://api.github.com/_private/browser/errors">
<link rel="assets" href="https://assets-cdn.github.com/">

<meta name="pjax-timeout" content="1000">


<meta name="msapplication-TileImage" content="/windows-tile.png">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="selected-link" value="/join" data-pjax-transient>

<meta name="google-analytics" content="UA-3769691-2">

<meta content="collector.githubapp.com" name="octolytics-host" />
<meta content="collector-cdn.github.com" name="octolytics-script-host" />
<meta content="github" name="octolytics-app-id" />
<meta content="01D4C6D6:6A02:1010064:55ADFA00"
	name="octolytics-dimension-request_id" />

<meta content="Rails, view, signup#join" data-pjax-transient="true"
	name="analytics-event" />
<meta class="js-ga-set" name="dimension1" content="Logged Out">
<meta name="is-dotcom" content="true">
<meta name="hostname" content="github.com">
<meta name="user-login" content="">

<link rel="icon" sizes="any" mask
	href="https://assets-cdn.github.com/pinned-octocat.svg">
<meta name="theme-color" content="#4078c0">
<link rel="icon" type="image/x-icon"
	href="https://assets-cdn.github.com/favicon.ico">


<meta content="authenticity_token" name="csrf-param" />
<meta
	content="P+Bn5kDYHBaS65Jg7HRqMULD6m7TADRSZjGopKA6ec9MTjDBacr6P3wnOdqCiJIkeL3giZ92FAlJeX/INBeTMg=="
	name="csrf-token" />

<link crossorigin="anonymous"
	href="https://assets-cdn.github.com/assets/github/index-50695c5163ac470fa2c366bc981c3513f8feb7d6a55f8cb1c56501dc46585f0e.css"
	media="all" rel="stylesheet" />
<link crossorigin="anonymous"
	href="https://assets-cdn.github.com/assets/github2/index-db5a50afa754826c2474d5b59ebdf2469e8d8692a94a97705bab3e1b29c1cabc.css"
	media="all" rel="stylesheet" />




<meta http-equiv="x-pjax-version"
	content="366e6801cfe7e982515f3b66ce173385">

<meta name="octolytics-dimension-user_id" />
<meta name="octolytics-dimension-user_login" />

</head>
<body>
<body class="logged_out  env-production windows  signup">
	<a href="#start-of-content" tabindex="1"
		class="accessibility-aid js-skip-to-content">Skip to content</a>
	<div class="wrapper">

		<div class="header header-logged-out" role="banner">
			<div class="container clearfix">

				<a class="header-logo-wordmark" href="https://github.com/"
					data-ga-click="(Logged out) Header, go to homepage, icon:logo-wordmark">
					<span class="mega-octicon octicon-logo-github"></span>
				</a>

				<div class="header-actions" role="navigation">
					<a class="btn btn-primary" href="/join"
						data-ga-click="(Logged out) Header, clicked Sign up, text:sign-up">Sign
						up</a> <a class="btn" href="/login?return_to=%2Fjoin"
						data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in">Sign
						in</a>
				</div>

				<div class="site-search  js-site-search" role="search">
					<form accept-charset="UTF-8" action="/search"
						class="js-site-search-form" data-global-search-url="/search"
						data-repo-search-url="" method="get">
						<div style="margin: 0; padding: 0; display: inline">
							<input name="utf8" type="hidden" value="&#x2713;" />
						</div>
						<label class="js-chromeless-input-container form-control">
							<div class="scope-badge">This repository</div> <input type="text"
							class="js-site-search-focus  chromeless-input" data-hotkey="s"
							name="q" placeholder="Search GitHub"
							data-global-scope-placeholder="Search GitHub"
							data-repo-scope-placeholder="Search" tabindex="1"
							autocapitalize="off">
						</label>
					</form>
				</div>

				<ul class="header-nav left" role="navigation">
					<li class="header-nav-item"><a class="header-nav-link"
						href="/explore"
						data-ga-click="(Logged out) Header, go to explore, text:explore">Explore</a>
					</li>
					<li class="header-nav-item"><a class="header-nav-link"
						href="/features"
						data-ga-click="(Logged out) Header, go to features, text:features">Features</a>
					</li>
					<li class="header-nav-item"><a class="header-nav-link"
						href="https://enterprise.github.com/"
						data-ga-click="(Logged out) Header, go to enterprise, text:enterprise">Enterprise</a>
					</li>
					<li class="header-nav-item"><a class="header-nav-link"
						href="/blog"
						data-ga-click="(Logged out) Header, go to blog, text:blog">Blog</a>
					</li>
				</ul>

			</div>
		</div>


		<div id="start-of-content" class="accessibility-aid"></div>
		<div class="site clearfix" role="main">

			<div id="site-container" class="context-loader-container" data-pjax-container>
				<div class="setup-wrapper">
					<div class="setup-header setup-org">
						<h1>회원가입</h1>
						<p class="lead">계정 하나로 모든 서비스 이용</p>
					</div>

					<div class="setup-main ">
						<div class="setup-form-container">
							<noscript>
								<p class="error">
									GitHub does not support browsers with JavaScript disabled.<br>
									We promise we’ll behave.
								</p>
							</noscript>

							<form accept-charset="UTF-8" action="register.action" autocomplete="off" class="setup-form js-form-signup-detail" id="signup-form"
								method="post">
							<!-- 	<div style="margin: 0; padding: 0; display: inline">
									<input name="utf8" type="hidden" value="&#x2713;" /><input
										name="authenticity_token" type="hidden"
										value="TjVojmXLn9UES+gjESZZyEjLeXKkbtgvuDL615KnioldeaXfwsUhUAvDNTJeSpoPcFB8UX/QCJfesIsr0vAQdg==" />
								</div>
 -->
								<h2 class="setup-form-title">Create your personal account</h2>

								<dl class="form">
									<dt class="input-label">
										<label autocapitalize="off" autofocus="autofocus"
											data-autocheck-url="/signup_check/username" for="user_login"
											name="user[login]">아이디</label>
									</dt>
									<dd>
										<input autocapitalize="off" autofocus="autofocus"
											data-autocheck-url="/signup_check/username" id="user_login"
											name="id" size="30" type="text" />
										<p class="note">사용가능한 아이디 입니다/중복된 아이디입니다.</p>
									</dd>
								</dl>
								
								
								<dl class="form">
									<dt class="input-label">
										<label autocapitalize="off" autofocus="autofocus"
											data-autocheck-url="/signup_check/username" for="user_login"
											name="name">사용자 이름</label>
									</dt>
									<dd>
										<input autocapitalize="off" autofocus="autofocus"
											data-autocheck-url="/signup_check/username" id="user_login"
											name="name" size="30" type="text" />
									</dd>
								</dl>
								
								<dl class="form">
									<dt class="input-label">
										<label autocapitalize="off"
											data-autocheck-url="/signup_check/email" for="user_email"
											name="user[email]">집 주소</label>
									</dt>
									<dd>
										<input autocapitalize="off"
											data-autocheck-url="/signup_check/email" id="user_email"
											name="address" size="30" type="text" />
										<p class="note">올바른 주소가 아닙니다.</p>
									</dd>
								</dl>
								
								<dl class="form">
									<dt class="input-label">
										<label autocapitalize="off"
											data-autocheck-url="/signup_check/email" for="user_email"
											name="user[email]">이메일 주소</label>
									</dt>
									<dd>
										<input autocapitalize="off"
											data-autocheck-url="/signup_check/email" id="user_email"
											name="email" size="30" type="text" />
										<p class="note">이메일 주소에 '@' 를 포함해 주세요.</p>
									</dd>
								</dl>

								<dl class="form">
									<dt class="input-label">
										<label data-autocheck-url="/signup_check/password"
											for="user_password" name="user[password]">비밀번호 만들기</label>
									</dt>
									<dd>
										<input data-autocheck-url="/signup_check/password"
											id="user_password" name="password" size="30"
											type="password" />
										<p class="note">Use at least one lowercase letter, one
											numeral, and seven characters.</p>
									</dd>
								</dl>

								<dl class="form">
									<dt class="input-label">
										<label for="user_password_confirmation">비밀번호 확인</label>
									</dt>
									<dd>
										<input id="user_password_confirmation"
											name="user[password_confirmation]" size="30" type="password" />
									</dd>
								</dl>
								<input type="hidden" name="source_label" value="Detail Form">
								<p class="tos-info">
									tracker 에서 이 정보를 요청하는 이유에 대해 <a href="https://support.google.com/accounts/answer/1733224?hl=ko" target="_blank">자세히 알아보세요.</a> 
								</p>

								<div class="form-actions">
									<button type="submit" class="btn btn-primary" id="signup_button" data-disable-with="Creating account&hellip;">회원가입</button>
								</div>

							</form>
						</div>
						<!-- /.setup-form-container -->
					</div>
					<!-- /.setup-main -->

					<div class="setup-secondary">
						<div class="setup-info-module">
							<h2>You’ll love tracker<img src="/tracker/resources/img/member/registerform_side.jpg"
								alt="위치기반서비스"  /></h2>
							<ul class="features-list">
								<li><strong>Unlimited</strong> collaborators</li>
								<li><strong>Unlimited</strong> public repositories</li>

								<li class="list-divider"></li>

								<li><span class="octicon octicon-check"></span> Great
									communication</li>
								<li><span class="octicon octicon-check"></span>
									Friction-less development</li>
								<li><span class="octicon octicon-check"></span> Open source
									community</li>
							</ul>
							
						</div>
					</div>
				</div>

			</div>
			<div class="modal-backdrop"></div>
		</div>
	</div>
	<!-- /.wrapper -->

	<!-- <div class="container">
		<div class="site-footer" role="contentinfo">
			<ul class="site-footer-links right">
				<li><a href="https://status.github.com/"
					data-ga-click="Footer, go to status, text:status">Status</a></li>
				<li><a href="https://developer.github.com"
					data-ga-click="Footer, go to api, text:api">API</a></li>
				<li><a href="https://training.github.com"
					data-ga-click="Footer, go to training, text:training">Training</a></li>
				<li><a href="https://shop.github.com"
					data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
				<li><a href="https://github.com/blog"
					data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
				<li><a href="https://github.com/about"
					data-ga-click="Footer, go to about, text:about">About</a></li>
				<li><a href="https://help.github.com"
					data-ga-click="Footer, go to help, text:help">Help</a></li>

			</ul>

			<a href="https://github.com" aria-label="Homepage"> <span
				class="mega-octicon octicon-mark-github" title="GitHub"></span>
			</a>
			<ul class="site-footer-links">
				<li>&copy; 2015 <span
					title="0.00857s from github-fe134-cp1-prd.iad.github.net">GitHub</span>,
					Inc.
				</li>
				<li><a href="https://github.com/site/terms"
					data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
				<li><a href="https://github.com/site/privacy"
					data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
				<li><a href="https://github.com/security"
					data-ga-click="Footer, go to security, text:security">Security</a></li>
				<li><a href="https://github.com/contact"
					data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
			</ul>
		</div>
	</div> -->

<!-- 
	<div class="fullscreen-overlay js-fullscreen-overlay"
		id="fullscreen_overlay">
		<div class="fullscreen-container js-suggester-container">
			<div class="textarea-wrap">
				<textarea name="fullscreen-contents" id="fullscreen-contents"
					class="fullscreen-contents js-fullscreen-contents" placeholder=""></textarea>
				<div class="suggester-container">
					<div
						class="suggester fullscreen-suggester js-suggester js-navigation-container"></div>
				</div>
			</div>
		</div>
		<div class="fullscreen-sidebar">
			<a href="#"
				class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w"
				aria-label="Exit Zen Mode"> <span
				class="mega-octicon octicon-screen-normal"></span>
			</a> <a href="#"
				class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
				aria-label="Switch themes"> <span
				class="octicon octicon-color-mode"></span>
			</a>
		</div>
	</div>
 -->





	<div id="ajax-error-message" class="flash flash-error">
		<span class="octicon octicon-alert"></span> <a href="#"
			class="octicon octicon-x flash-close js-ajax-error-dismiss"
			aria-label="Dismiss error"></a> Something went wrong with that
		request. Please try again.
	</div>


	<script crossorigin="anonymous"
		src="https://assets-cdn.github.com/assets/frameworks-3241a40a58a82e21daef3dd3cdca01bde189158793c1b6f9193fff2b5293cd1d.js"></script>
	<script async="async" crossorigin="anonymous"
		src="https://assets-cdn.github.com/assets/github/index-93799dc3b48721586da77cc7c73632bc4fb8e157356876ec160370ab6be81349.js"></script>


</body>
</html>
