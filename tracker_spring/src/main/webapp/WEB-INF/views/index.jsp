<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Tacker - HTML Bootstrap Template</title>


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- jQuery UI Dialog - Modal form -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

</head>
<body>

	<%
		pageContext.include("/WEB-INF/views/include/header.jsp");
	%>

	<div id="dialog-form" title="Create new user">
		<p class="validateTips">All form fields are required.</p>
		<form>
			<fieldset>
				<label for="name">Name</label> <input type="text" name="name"
					id="name" value="Jane Smith"
					class="text ui-widget-content ui-corner-all"> <label
					for="email">Email</label> <input type="text" name="email"
					id="email" value="jane@smith.com"
					class="text ui-widget-content ui-corner-all"> <label
					for="password">Password</label> <input type="password"
					name="password" id="password" value="xxxxxxx"
					class="text ui-widget-content ui-corner-all">

				<!-- Allow form submission with keyboard without duplicating the dialog button -->
				<input type="submit" tabindex="-1"
					style="position: absolute; top: -1000px">
			</fieldset>
		</form>
	</div>

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
						<img src="/tracker/resources/img/7.jpg" class="img-responsive"
							alt="">
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0"
								data-wow-delay="0.3s">
								<h2>
									<span>최고의 서비스</span>
								</h2>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0"
								data-wow-delay="0.6s">
								<p>우주 끝까지 추적 해 드립니다.</p>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0"
								data-wow-delay="0.9s">
								<form class="form-inline">
									<div class="form-group">
										<button type="livedemo" name="Live Demo"
											class="btn btn-primary btn-lg" required="required">Live
											Demo</button>
									</div>
									<div class="form-group">
										<button type="getnow" name="Get Now"
											class="btn btn-primary btn-lg" required="required">Get
											Now</button>
									</div>
								</form>
							</div>
						</div>
					</div>

					<div class="item">
						<img src="/tracker/resources/img/6.jpg" class="img-responsive"
							alt="">
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0"
								data-wow-delay="1.0s">
								<h2>최고의 전자발찌</h2>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0"
								data-wow-delay="1.3s">
								<p>고X욱씨가 사용하고 있는 제품</p>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0"
								data-wow-delay="1.6s">
								<form class="form-inline">
									<div class="form-group">
										<button type="livedemo" name="purchase"
											class="btn btn-primary btn-lg" required="required">Live
											Demo</button>
									</div>
									<div class="form-group">
										<button type="getnow" name="subscribe"
											class="btn btn-primary btn-lg" required="required">Get
											Now</button>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="item">
						<img src="/tracker/resources/img/1.jpg" class="img-responsive"
							alt="">
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0"
								data-wow-delay="0.3s">
								<h2>최고의 내구성</h2>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0"
								data-wow-delay="0.6s">
								<p>티타늄 합금으로 제조하여 부서지지 않습니다</p>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0"
								data-wow-delay="0.9s">
								<form class="form-inline">
									<div class="form-group">
										<button type="livedemo" name="purchase"
											class="btn btn-primary btn-lg" required="required">Live
											Demo</button>
									</div>
									<div class="form-group">
										<button type="getnow" name="subscribe"
											class="btn btn-primary btn-lg" required="required">Get
											Now</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>

				<a class="left carousel-control hidden-xs" href="#carousel-slider"
					data-slide="prev"> <i class="fa fa-angle-left"></i>
				</a> <a class=" right carousel-control hidden-xs"
					href="#carousel-slider" data-slide="next"> <i
					class="fa fa-angle-right"></i>
				</a>
			</div>
			<!--/#carousel-slider-->
		</div>
		<!--/#about-slider-->
	</div>
	<!--/#slider-->

	<div id="mypage">
		<div class="container">
			<div class="row">
				<div class="text-center">
					<h3>My Page</h3>
					<p>My page content</p>
				</div>
			</div>
		</div>
	</div>
	<!-- /#mypage -->

	<div id="managemember">
		<div class="container">
			<div class="row">
				<div class="text-center">
					<h3>회원관리</h3>
					<p>회원관리 내용</p>
				</div>
			</div>
		</div>
	</div>
	<!-- /#managemember -->

	<div id="manageequipment">
		<div class="container">
			<div class="row">
				<div class="text-center">
					<h3>장비관리</h3>
					<p>장비관리 내용</p>
					<div>

						<table id="grid"></table>
						<div id="pager"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /#manageequipment -->

	<div id="company">
		<div class="container">
			<div class="row">
				<div class="text-center">
					<h3>Company</h3>
					<p>우리회사 좋은회사!!!</p>
				</div>
			</div>
		</div>
	</div>
	<!-- /#company -->

	<div id="products">
		<div class="container">
			<div class="text-center">
				<h3>Products</h3>
				<p>우리 제품 좋은 제품!!!</p>
			</div>
			<c:import url="./equipment/showequipmentlist.jsp" />
		</div>
	</div>
	<!--/#products-->

	<div id="gpstracker">
		<div class="container">
			<div class="text-center">
				<h3>Gps Tracker</h3>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
					eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut
					enim ad minim veniam
				</p>
			</div>
		</div>
	</div>
	<!--/#gpstracker-->

	<div id="support">
		<div class="container">
			<div class="text-center">
				<h3>Support</h3>
				<p>
					Lorem ipsum dolor sit amet consectetur adipisicing elit Lorem ipsum
					dolor sit<br>amet consectetur adipisicing elit
				</p>
			</div>
		</div>
	</div>
	<!--/#support-->

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
				&copy; 2015 <a target="_blank" href="http://bootstraptaste.com/"
					title="Free Twitter Bootstrap WordPress Themes and HTML templates">bootstraptaste</a>.
				All Rights Reserved.
			</div>
		</div>
	</footer>
	<!--/#footer-->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="/tracker/resources/js/jquery-2.1.1.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/tracker/resources/js/bootstrap.min.js"></script>
	<script src="/tracker/resources/js/parallax.min.js"></script>
	<script src="/tracker/resources/js/wow.min.js"></script>
	<script src="/tracker/resources/js/jquery.easing.min.js"></script>
	<script type="text/javascript"
		src="/tracker/resources/js/fliplightbox.min.js"></script>
	<script src="/tracker/resources/js/functions.js"></script>
	<script src="/tracker/resources/js/i18n/grid.locale-en.js"></script>
	<script src="/tracker/resources/js/jquery.jqGrid.min.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script>
		/* modal jQuery*/
		$(function() {

			var dialog, form,

			// From http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#e-mail-state-%28type=email%29
			emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/, name = $("#name"), email = $("#email"), password = $("#password"), allFields = $(
					[]).add(name).add(email).add(password), tips = $(".validateTips");

			function updateTips(t) {
				tips.text(t).addClass("ui-state-highlight");
				setTimeout(function() {
					tips.removeClass("ui-state-highlight", 1500);
				}, 500);
			}

			function checkLength(o, n, min, max) {
				if (o.val().length > max || o.val().length < min) {
					o.addClass("ui-state-error");
					updateTips("Length of " + n + " must be between " + min
							+ " and " + max + ".");
					return false;
				} else {
					return true;
				}
			}

			function checkRegexp(o, regexp, n) {
				if (!(regexp.test(o.val()))) {
					o.addClass("ui-state-error");
					updateTips(n);
					return false;
				} else {
					return true;
				}
			}

			function addUser() {
				var valid = true;
				allFields.removeClass("ui-state-error");

				valid = valid && checkLength(name, "username", 3, 16);
				valid = valid && checkLength(email, "email", 6, 80);
				valid = valid && checkLength(password, "password", 5, 16);

				valid = valid
						&& checkRegexp(
								name,
								/^[a-z]([0-9a-z_\s])+$/i,
								"Username may consist of a-z, 0-9, underscores, spaces and must begin with a letter.");
				valid = valid
						&& checkRegexp(email, emailRegex, "eg. ui@jquery.com");
				valid = valid
						&& checkRegexp(password, /^([0-9a-zA-Z])+$/,
								"Password field only allow : a-z 0-9");

				if (valid) {
					$("#users tbody").append(
							"<tr>" + "<td>" + name.val() + "</td>" + "<td>"
									+ email.val() + "</td>" + "<td>"
									+ password.val() + "</td>" + "</tr>");
					dialog.dialog("close");
				}
				return valid;
			}

			dialog = $("#dialog-form").dialog({
				autoOpen : false,
				height : 300,
				width : 350,
				modal : true,
				buttons : {
					"Create an account" : addUser,
					Cancel : function() {
						dialog.dialog("close");
					}
				},
				close : function() {
					form[0].reset();
					allFields.removeClass("ui-state-error");
				}
			});

			form = dialog.find("form").on("submit", function(event) {
				event.preventDefault();
				addUser();
			});

			$("#create-user").on("click", function() {
				dialog.dialog("open");
			});

		});
	</script>
	<script>

		/*bootstap jQuery*/
		wow = new WOW({}).init();

		$(document).ready(function() {
			// 변수를 선언합니다.
			var customDialog = {
				onclickSubmit : function(params) {
					var selectedRow = $('#grid').getGridParam('selrow');
					rowData = $('#grid').getRowData(selectedRow);
					return {
						id : rowData.id
					};
				}
			};

			$('#grid').jqGrid({
				url : "", // 조회(전체, 검색) 기능을 수행하는 서버 경로
				editurl : "", // 삽입, 삭제, 변경 기능을 수행하는 서버 경로
				datatype : "",
				pager : '#pager',
				caption : '장비관리',
				height : '100%',
				rowNum : 10, // 한 페이지에 표시될 행 갯수
				rowList : [ 10, 20, 30 ], // rowNum 에 대한 선택 옵션
				colNames : [ '장비번호', '장비이름', '모델명', '가격', '내용', '사진' ], // 헤더 부분
				colModel : [ // 바인딩 될 데이터
				{
					name : 'equipNo',
					index : 'id',
					width : 80
				}, {
					name : 'equipName',
					index : 'name',
					width : 230,
					editable : true,
					edittype : 'text'
				}, {
					name : 'modelName',
					index : 'author',
					width : 180,
					editable : true,
					edittype : 'text'
				}, {
					name : 'equipPrice',
					index : 'publisher',
					width : 150,
					editable : true,
					edittype : 'text'
				}, {
					name : 'equipContent',
					index : 'isbn',
					width : 250,
					editable : true,
					edittype : 'text'
				}, {
					name : 'fileToUpload',
					index : 'customer_id',
					width : 250,
					editable : true,
					edittype : 'file',
					editoptions : {
						enctype : "multipart/form-data",
						required : true
					},
				}, ],
				loadError : function(xhr, status, error) {
					console.log(error);
				}
			}).navGrid('#pager', {
				search : true,
				edit : true,
				add : true,
				del : true
			});//, customDialog, {}, customDialog);
		});
	</script>
</body>
</html>
