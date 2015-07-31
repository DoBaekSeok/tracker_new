<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	<script src="/tracker/resources/js/tracking.js"></script>
	<script>
	wow = new WOW({}).init();
	</script>	
</head>
<body>	

	<!-- header -->
	<c:import url="/WEB-INF/views/include/header.jsp" />
	
	<div id="gpstracker">
		<div class="container">
			<div class="text-center">
				<br /><br /><br /><br /><br />
				<h3>Gps Tracker</h3>
				<div id="map_view" class="container" style="width:600px;height:450px;float:left" >			
				</div>
				<div style="width:480px;height:440px;float:left">
					<table border="5" style="width:480px;height:440px;font-size:13pt;">
						<tr style="width:480px;height:40px">
							<td style="width:80px;text-align:center">번호</td> 
							<td style="padding-left:10px">
								<select id="onEquipNo" width="100px">
								    <option value="1" selected="selected">1번 장비</option>
								    <option value="2" >2번 장비</option>
								    <option value="3" >3번 장비</option>
								</select>	
							</td>
						</tr>
						<tr style="width:480px;height:100px">
							<td style="width:80px;text-align:center">위도</td> 
							<td>
								<input type="text" id="latitude" style="padding-left:10px;width:400px;height:100px; font-size:28pt; font-weight:bold;" readonly="readonly" value="0.0"/>
							</td>
						</tr>
						<tr style="width:480px;height:100px">
							<td style="width:80px;text-align:center">경도</td> 
							<td>
								<input type="text" id="longitude" style="padding-left:10px;width:400px;height:100px; font-size:28pt; font-weight:bold;" readonly="readonly" value="0.0"/>
							</td>
						</tr>
						<tr style="width:480px;height:100px">
							<td rowspan="2" style="width:80px;text-align:center">주소</td> 
							<td>
								<textarea id="address" style="padding-top:20px;width:400px;height:100px;font-size:15pt;text-align:center" readonly="readonly">
								</textarea>
							</td>
						</tr>
						<tr style="width:480px;height:100px">
							<td>
								<textarea id="address2" style="padding-top:20px;width:400px;height:100px;font-size:15pt;text-align:center" readonly="readonly">
								</textarea>
							</td>
						</tr>

					</table>


				</div>
			</div>
		</div>
	</div>
		<br /><br />
	<footer>	
		<div class="text-center">
			<div class="copyright">
				&copy; 2015 <a target="_blank" href="http://bootstraptaste.com/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">bootstraptaste</a>. All Rights Reserved.
			</div>
		</div>									
	</footer>
    
</body>
</html>