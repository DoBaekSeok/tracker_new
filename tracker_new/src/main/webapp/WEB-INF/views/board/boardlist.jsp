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
	<link rel="stylesheet" href="/tracker/resources/css/jqgrid/ui.jqgrid.css" />
	
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- <script src="/tracker/resources/js/jquery-2.1.1.min.js"></script> -->
    <script src="http://code.jquery.com/jquery-1.11.3.js"></script>		
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
	<script>
	wow = new WOW({}).init();
	</script>	
	<script>
	$(function() {
        $( "#tabs" ).tabs({
		    beforeLoad: function( event, ui ) {
		        ui.jqXHR.fail(function() {
		            ui.panel.html(
		                "Couldn't load this tab. We'll try to fix this as soon as possible. " +
		                "If this wouldn't be a demo." );
		        });
		    }
		});
    });	
	$(document).ready(function () {
		var pageWidth = $("#grid1").parent().width() - 100;
		$('#grid1').jqGrid({
	        url: 'listjason.action?boardkind=notice',			//조회(전체, 검색) 기능을 수행하는 서버 경로
	        datatype: 'json',
	        colNames: ['NO', '제목', '작성자', '작성일'],
	        colModel: [
	            { name: 'boardNo', index: 'boardNo', width:(pageWidth*(10/100)), key: true },
	            { name: 'boardTitle', index: 'boardTitle', width:(pageWidth*(50/100)), editable: false, edittype: 'text' },
	            { name: 'boardWriter', index: 'boardWriter', width:(pageWidth*(10/100)), editable: false, edittype: 'text' },
	            { name: 'boardRegDate', index: 'boardRegDate', width:(pageWidth*(20/100)), editable: false, formatter: 'date', formatoptions: { newformat: 'Y-m-d H:i:s'}}
	        ],
	        height: '100%',
	        rowNum: 5,									//한 페이지에 표시될 행 갯수
	        rowList: [5, 10, 15],						//rowNum에 대한 선택 옵션
	        pager: '#pager1',
	        sortname: 'boardNo',
	        viewrecords: true,
	        sortorder: "desc",
	        onSelectRow: function(rowId) {
	        	return location.href='/tracker/board/view.action?boardno=' + rowId;
	        }	        
	    });
		$('#grid1').jqGrid('navGrid', '#pager1', { add:true,edit:false,del:false,search:true });
	});
	$(document).ready(function () {
		var pageWidth = $("#bgrid2").parent().width() - 100;
		$('#bgrid2').jqGrid({
	        url: 'listjason.action?boardkind=qna',			//조회(전체, 검색) 기능을 수행하는 서버 경로
	        datatype: 'json',
	        colNames: ['NO', '제목', '작성자', '작성일'],
	        colModel: [
	            { name: 'boardNo', index: 'boardNo', width:(pageWidth*(10/100)), key: true },
	            { name: 'boardTitle', index: 'boardTitle', width:(pageWidth*(50/100)), editable: false, edittype: 'text' },
	            { name: 'boardWriter', index: 'boardWriter', width:(pageWidth*(10/100)), editable: false, edittype: 'text' },
	            { name: 'boardRegDate', index: 'boardRegDate', width:(pageWidth*(20/100)), editable: false, formatter: 'date', formatoptions: { newformat: 'Y-m-d H:i:s'}}
	        ],
	        height: '100%',
	        rowNum: 5,									//한 페이지에 표시될 행 갯수
	        rowList: [5, 10, 15],						//rowNum에 대한 선택 옵션
	        pager: '#bpager2',
	        sortname: 'boardNo',
	        viewrecords: true,
	        sortorder: "desc",
	        onSelectRow: function(rowId) {
	        	return location.href='/tracker/board/view.action?boardno=' + rowId;
	        }	
	    });
		$('#bgrid2').jqGrid('navGrid', '#bpager2', { add:true,edit:false,del:false,search:true });
	});
	$(document).ready(function () {
		var pageWidth = $("#cgrid3").parent().width() - 100;
		$('#cgrid3').jqGrid({
	        url: 'listjason.action?boardkind=community',			//조회(전체, 검색) 기능을 수행하는 서버 경로
	        datatype: 'json',
	        colNames: ['NO', '제목', '작성자', '작성일'],
	        colModel: [
	            { name: 'boardNo', index: 'boardNo', width:(pageWidth*(10/100)), key: true },
	            { name: 'boardTitle', index: 'boardTitle', width:(pageWidth*(50/100)), editable: false, edittype: 'text' },
	            { name: 'boardWriter', index: 'boardWriter', width:(pageWidth*(10/100)), editable: false, edittype: 'text' },
	            { name: 'boardRegDate', index: 'boardRegDate', width:(pageWidth*(20/100)), editable: false, formatter: 'date', formatoptions: { newformat: 'Y-m-d H:i:s'}}
	        ],
	        height: '100%',
	        rowNum: 5,									//한 페이지에 표시될 행 갯수
	        rowList: [5, 10, 15],						//rowNum에 대한 선택 옵션
	        pager: '#cpager3',
	        sortname: 'boardNo',
	        viewrecords: true,
	        sortorder: "desc",
	        onSelectRow: function(rowId) {
	        	return location.href='/tracker/board/view.action?boardno=' + rowId;
	        }	        
	    });
		$('#cgrid3').jqGrid('navGrid', '#cpager3', { add:true,edit:false,del:false,search:true });
	});
</script>
</head>
<body>	

	<div id="feature">
		<div class="container">
			<div class="row">
				<div class="text-center">
					<h3>Support</h3>
					<div id="tabs">
						<ul>
						    <li><a href="#tabs-1">공지사항</a></li>
						    <li><a href="#tabs-2">Q & A</a></li>
						    <li><a href="#tabs-3">자유 게시판</a></li>
					  	</ul>
						<div id="tabs-1" align="center" style="width:100%">
							<table id="grid1"></table>
							<div id="pager1"></div>
						</div>
						<div id="tabs-2" align="center" style="width:100%">
							<table id="bgrid2"></table>
							<div id="bpager2"></div>
						</div>
						<div id="tabs-3" align="center" style="width:100%">
							<table id="cgrid3"></table>
							<div id="cpager3"></div>
						</div>
					</div>
				</div>				
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
