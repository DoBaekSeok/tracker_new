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

    $(document).ready(function () {
		var template = "<div><div style='display:none;'> equipNo </div><div style='display:none;'> {equipNo} </div>";
		template += "<div> 장비명: </div><div>{equipName} </div>";
		template += "<div> 모델명: </div><div>{modelName} </div>";
		template += "<div> 가격: </div><div>{equipPrice} </div>";
		template += "<div> 내용:</div><div> {equipContent} </div>";
		template += "<div> 사진:</div><div> {equipPhoto} </div>";
		template += "<hr style='width:100%;'/>";
		template += "<div> {sData} {cData}  </div></div>";
		
		
        $("#jqGrid").jqGrid({
            url: 'equipmentlistajax.action',
			// we set the changes to be made at client side using predefined word clientArray
            editurl: 'equipmenteditajax.action',
            datatype: "json",
            colModel: [
                {
					label: '순서',
                    name: 'equipNo',
                    width: 50,
                    hidden:true,
					key: true,
					editable: true
                },
                {
					label: '장비이름',
                    name: 'equipName',
                    width: 100,
                    editable: true // must set editable to true if you want to make the field editable
                },
                {
					label : '모델이름',
                    name: 'modelName',
                    width: 100,
                    editable: true
                },
                {
					label: '가격',
                    name: 'equipPrice',
                    width: 100,
                    editable: true
                },
                {
					label: '내용',
                    name: 'equipContent',
                    width: 800,
                    editable: true
                },
                {               	
					label: '사진',
                    name: 'equipPhoto',
                    jsonmap: 'equipPhoto.savedFileName',
                    width: 150,
					key: true,
					enctype: "multipart/form-data",
                    editable: true,
                    edittype: 'file',
                    align: 'center',
					formatter : formatImage  

                },  
  
            ],
			loadonce: true,
			viewrecords: true,
            width: '1200',
            height: 'auto',
            rowNum: 10,
            pager: "#jqGridPager"
        });
			
        $('#jqGrid').navGrid('#jqGridPager',
            
            { edit: true, add: true, del: false, search: true, refresh: true, view: false, position: "left", cloneToTop: false },
           		
            {closeAfterEdit: true, reloadAfterSubmit: false},
            {closeAfterAdd: true, reloadAfterSubmit: false},
            {reloadAfterSubmit: true},
                
            {
                editCaption: "The Edit Dialog",
				template: template,
                errorTextFormat: function (data) {
                    return 'Error: ' + data.responseText
                }
            },
            // options for the Add Dialog
            {
				template: template,
                errorTextFormat: function (data) {
                    return 'Error: ' + data.responseText
                }
            },
            // options for the Delete Dailog
            {
                errorTextFormat: function (data) {
                    return 'Error: ' + data.responseText
                }
            });
    });

    
    
   
    function formatImage(cellValue, options, rowObject) {
        var imageHtml = "<img width='150' height='100' src='/tracker/resources/img/product/" + cellValue + "'/>";
        return imageHtml;
    }


    function unformatImage(cellValue, options, cellObject) {
        return $(cellObject.html()).attr("originalValue");
    }

    function formatRating(cellValue, options, rowObject) {
        var color = (parseInt(cellValue) > 0) ? "green" : "red";
        var cellHtml = "<span style='color:" + color + "' originalValue='" +
                             cellValue + "'>" + cellValue + "</span>";

        return cellHtml;
    }

    
	</script>
</head>
<body>	

	<!-- header -->
<%-- 	<c:import url="/WEB-INF/views/include/header.jsp" / --%>
	
	<div id="feature">
		<div class="container">
			<div class="row">
				<div class="text-center">
					<h3>장비관리</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit Lorem ipsum dolor sit<br>amet consectetur adipisicing elit</p>
				</div>				
			</div>
			<div>
				  <table id="jqGrid"></table>
   				 <div id="jqGridPager"></div>
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
