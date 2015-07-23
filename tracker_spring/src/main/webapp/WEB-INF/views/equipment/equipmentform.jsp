<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <title>Index</title>
    <link href="css/ui-blitzer/jquery-ui.css" rel="stylesheet" />
    <link href="css/ui.jqgrid.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-1.11.3.js"></script>
    <script src="js/i18n/grid.locale-en.js"></script>
    <script src="js/jquery.jqGrid.min.js"></script>
<script>
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
            url: '/examples-web/books/get2',	  // 조회(전체, 검색) 기능을 수행하는 서버 경로
            editurl: '/examples-web/books/edit2', // 삽입, 삭제, 변경 기능을 수행하는 서버 경로
            datatype: 'json',
            pager: '#pager',
            caption: 'Books',
            height: '100%',
            rowNum: 10,							 // 한 페이지에 표시될 행 갯수
            rowList: [10, 20, 30],				 // rowNum 에 대한 선택 옵션
            colNames: ['id', 'name', 'author', 'publisher', 'isbn', 'page', 'poto'], // 헤더 부분
            colModel: [														 // 바인딩 될 데이터
                { name: 'id', index: 'id', width: 30 },
                { name: 'name', index: 'name', width: 230, editable: true, edittype: 'text' },
                { name: 'author', index: 'author', width: 90, editable: true, edittype: 'text' },
                { name: 'publisher', index: 'publisher', width: 80, editable: true, edittype: 'text' },
                { name: 'isbn', index: 'isbn', width: 80, editable: true, edittype: 'text' },
                { name: 'page', index: 'page', width: 40, editable: true, edittype: 'text' },
                { name: 'poto', index: 'poto', width: 40, editable: true, edittype: 'text' }
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
    <table id="grid"></table>
    <div id="pager"></div>
</body>
</html>