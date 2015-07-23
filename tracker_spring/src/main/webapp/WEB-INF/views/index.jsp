<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Tacker - HTML Bootstrap Template</title> 

    <!-- Bootstrap -->
    <link href="/tracker/resources/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="/tracker/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="/tracker/resources/css/animate.css">
	<link rel="stylesheet" href="/tracker/resources/css/overwrite.css">
	<link href="/tracker/resources/css/animate.min.css" rel="stylesheet"> 
	<link href="/tracker/resources/css/style.css" rel="stylesheet" />	
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>	
	<header id="header">
        <nav class="navbar navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="home.action">Tracker</a>
                </div>				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="#header">Intro</a></li>
                        <li><a href="#mypage">My Page</a></li>
                        <li><a href="#managemember">회원관리</a></li>
                        <li><a href="#manageequipment">장비관리</a></li>
                        <li><a href="#company">Company</a></li>
                        <li><a href="#products">Products</a></li>
                        <li><a href="#gpstracker">GPS Tracker</a></li> 
                        <li><a href="#support">Support</a></li>        
                        <li><a href="/tracker/member/register.action">Join</a></li>                                           
                   	    <li><a href="/tracker/account/login.action">Login</a></li>                                           
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->		
    </header><!--/header-->	
    
	<div class="slider">		
		<div id="about-slider">
			<div id="carousel-slider" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators visible-xs">
					<li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-slider" data-slide-to="1"></li>
					<li data-target="#carousel-slider" data-slide-to="2"></li>
				</ol>

				<div class="carousel-inner">
					<div class="item active">						
						<img src="/tracker/resources/img/7.jpg" class="img-responsive" alt=""> 
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">								
								<h2><span>최고의 서비스</span></h2>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">								
								<p>우주 끝까지 추적 해 드립니다.</p>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">								
								<form class="form-inline">
									<div class="form-group">
										<button type="livedemo" name="Live Demo" class="btn btn-primary btn-lg" required="required">Live Demo</button>
									</div>
									<div class="form-group">
										<button type="getnow" name="Get Now" class="btn btn-primary btn-lg" required="required">Get Now</button>
									</div>
								</form>
							</div>
						</div>
				    </div>
			
				    <div class="item">
						<img src="/tracker/resources/img/6.jpg" class="img-responsive" alt=""> 
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="1.0s">								
								<h2>최고의 전자발찌</h2>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="1.3s">								
								<p>고X욱씨가 사용하고 있는 제품</p>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="1.6s">								
								<form class="form-inline">
									<div class="form-group">
										<button type="livedemo" name="purchase" class="btn btn-primary btn-lg" required="required">Live Demo</button>
									</div>
									<div class="form-group">
										<button type="getnow" name="subscribe" class="btn btn-primary btn-lg" required="required">Get Now</button>
									</div>
								</form>
							</div>
						</div>
				    </div> 
				    <div class="item">
						<img src="/tracker/resources/img/1.jpg" class="img-responsive" alt=""> 
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">								
								<h2>최고의 내구성</h2>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">								
								<p>티타늄 합금으로 제조하여 부서지지 않습니다</p>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">								
								<form class="form-inline">
									<div class="form-group">
										<button type="livedemo" name="purchase" class="btn btn-primary btn-lg" required="required">Live Demo</button>
									</div>
									<div class="form-group">
										<button type="getnow" name="subscribe" class="btn btn-primary btn-lg" required="required">Get Now</button>
									</div>
								</form>
							</div>
						</div>
				    </div> 
				</div>
				
				<a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
					<i class="fa fa-angle-left"></i> 
				</a>
				
				<a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
					<i class="fa fa-angle-right"></i> 
				</a>
			</div> <!--/#carousel-slider-->
		</div><!--/#about-slider-->
	</div><!--/#slider-->
	
	<div id="mypage">
		<div class="container">
			<div class="row">
				<div class="text-center">
					<h3>My Page</h3>
					<p>My page content</p>
				</div>
			</div>
		</div>
	</div><!-- /#mypage -->
	
	<div id="managemember">
		<div class="container">
			<div class="row">
				<div class="text-center">
					<h3>회원관리</h3>
					<p>회원관리 내용</p>
				</div>
			</div>
		</div>
	</div><!-- /#managemember -->
	
	<div id="manageequipment">
		<div class="container">
			<div class="row">
				<div class="text-center">
					<h3>장비관리</h3>
					<p>장비관리 내용</p>
				</div>
			</div>
		</div>
	</div><!-- /#manageequipment --> 
	
	<div id="company">
		<div class="container">
			<div class="row">
				<div class="text-center">
					<h3>Company</h3>
					<p>우리회사 좋은회사!!!</p>
				</div>
			</div>			
		</div>
	</div><!-- /#company -->
	
	<div id="products">
		<div class="container">
			<div class="text-center">
				<h3>Products</h3>
				<p>우리 제품 좋은 제품!!!</p>
			</div>			
			<c:import url="./equipment/showequipmentlist.jsp" />			
		</div>
	</div><!--/#products-->
		
	<div id="gpstracker">
		<div class="container">
			<div class="text-center">
				<h3>Gps Tracker</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br>
				et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
		</div>
	</div><!--/#gpstracker-->
	
	<div id="support">
		<div class="container">
			<div class="text-center">
				<h3>Support</h3>
				<p>Lorem ipsum dolor sit amet consectetur adipisicing elit Lorem ipsum dolor sit<br>amet consectetur adipisicing elit</p>
			</div>
		</div>
	</div><!--/#support-->
	
	<footer>
		<!-- <div id="contact">
			<div class="container">
				<div class="text-center">
					<h3>Contact Us</h3>
					<p>Fusce fermen tum neque a rutrum varius odio pede</p>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.2s">
						<h2>Contact us any time</h2>
						<p>In a elit in lorem congue varius. Sed nec arcu.
						Etiam sit amet augue.
						Fusce fermen tum neque a rutrum varius odio pede 
						ullamcorp-er tellus ut dignissim nisi risus non tortor.
						Aliquam mollis neque.</p>				
					</div>				
					
					<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.4s">
						<h2>Contact Info</h2>
						<ul>
							<li><i class="fa fa-home fa-2x"></i> Office # 38, Suite 54 Elizebth Street, Victoria State Newyork, USA 33026</li><hr>
							<li><i class="fa fa-phone fa-2x"></i> +38 000 129900</li><hr>
							<li><i class="fa fa-envelope fa-2x"></i> info@domain.net</li>
						</ul>
					</div>
					
					<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">					
						<form class="form-inline">
							<div class="form-group">
								<input type="name" class="form-control" id="exampleInputName" placeholder="name">							
							</div>
							<div class="form-group">							
								<input type="email" class="form-control" id="exampleInputEmail1" placeholder="email">
							</div>
						</form>
						
						<form>	
							<div class="form-group">
								<input type="subject" class="form-control" placeholder="Subject">
							</div>						
							<textarea class="form-control" rows="5"></textarea>							
							<div class="form-group">
								<button type="submit" name="submit" class="btn btn-primary btn-lg" required="required">Submit Message</button>
							</div>
						</form>
					</div>	
				</div>
			</div>
		</div>/#contact	 -->	
					
		<!-- <div class="container">
			<div class="sub-footer">
				<div class="text-center">
					<div class="col-md-12">
						<form class="form-inline">
							<div class="form-group">
								<button type="purchase" name="purchase" class="btn btn-primary btn-lg" required="required">Enter Your Email</button>
							</div>
							<div class="form-group">
								<button type="subscribe" name="subscribe" class="btn btn-primary btn-lg" required="required">Subscribe Now</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>			
		<div class="social-icon">
			<div class="container">
				<div class="col-md-6 col-md-offset-3">						
					<ul class="social-network">
						<li><a href="#" class="fb tool-tip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#" class="twitter tool-tip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#" class="gplus tool-tip" title="Google Plus"><i class="fa fa-google-plus"></i></a></li>
						<li><a href="#" class="linkedin tool-tip" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#" class="ytube tool-tip" title="You Tube"><i class="fa fa-youtube-play"></i></a></li>
						<li><a href="#" class="dribbble tool-tip" title="Dribbble"><i class="fa fa-dribbble"></i></a></li>
						<li><a href="#" class="pinterest tool-tip" title="Pinterest"><i class="fa fa-pinterest-square"></i></a></li>
					</ul>						
				</div>
			</div>
		</div> -->				
		
		<div class="text-center">
			<div class="copyright">
				&copy; 2015 <a target="_blank" href="http://bootstraptaste.com/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">bootstraptaste</a>. All Rights Reserved.
			</div>
		</div>									
	</footer><!--/#footer-->
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/tracker/resources/js/jquery-2.1.1.min.js"></script>		
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/tracker/resources/js/bootstrap.min.js"></script>	
	<script src="/tracker/resources/js/parallax.min.js"></script>
	<script src="/tracker/resources/js/wow.min.js"></script>
	<script src="/tracker/resources/js/jquery.easing.min.js"></script>
	<script type="text/javascript" src="/tracker/resources/js/fliplightbox.min.js"></script>
	<script src="/tracker/resources/js/functions.js"></script>
	<script>
		wow = new WOW({}).init();
	</script>	
  </body>
</html>
