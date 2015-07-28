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
	<script src="/tracker/resources/js/i18n/grid.locale-en.js"></script>	
	<script>
	wow = new WOW({}).init();
	
	$(document).ready(function () {
        // 변수를 선언합니다.
        var customDialog = {
            onclickSubmit: function (params) {
                var selectedRow = $('#grid').getGridParam('selrow');
                rowData = $('#grid').getRowData(selectedRow);
                return { id: rowData.id };
            }
        };

        $('#grid').jqGrid({
            url: 'equipmentlistajax.action',	  // 조회(전체, 검색) 기능을 수행하는 서버 경로
            editurl: 'equipmenteditajax.action', // 삽입, 삭제, 변경 기능을 수행하는 서버 경로
            datatype: 'json',
            pager: '#pager',
            caption: '장비관리',
            height: 'auto%',
            rowNum: 10,							 // 한 페이지에 표시될 행 갯수
            rowList: [10, 20, 30],				 // rowNum 에 대한 선택 옵션
        	colNames : [ '순서', '장비이름', '모델명', '가격', '내용', '사진' ], // 헤더 부분
            colModel: [														 // 바인딩 될 데이터
                { name: 'equipNo', index: 'equipNo', width: 50, editable: true, hidden: true, editrules: { edithidden: false }, hidedlg: true},
                { name: 'equipName', index: 'equipName', width: 150, editable: true, edittype: 'text' },
                { name: 'modelName', index: 'modelName', width: 150, editable: true, edittype: 'text' },
                { name: 'equipPrice', index: 'equipPrice', width: 80, editable: true, edittype: 'text' },
                { name: 'equipContent', index: 'equipContent', width: 600, editable: true, edittype: 'text' },
                { name: 'fileToUpload', index: 'fileToUpload', width: 100, editable: true, edittype: 'file' },
          
            ],
            loadError : function(xhr, status, error){
            	console.log(error);
            }
        }).navGrid('#pager', {
            search: true,
            edit: true,
            add: true,
            del: true
        });//, customDialog, {}, customDialog);
    });
	</script>	
</head>
<body>	

	<!-- header -->
	<c:import url="/WEB-INF/views/include/header.jsp" />
	
	<div id="feature">
		<div class="container">
			<div class="row">
				<div class="text-center">
					<h3>Features</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit Lorem ipsum dolor sit<br>amet consectetur adipisicing elit</p>
				</div>				
			</div>
			<div>
				<table id="grid"></table>
				<div id="pager"></div>
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