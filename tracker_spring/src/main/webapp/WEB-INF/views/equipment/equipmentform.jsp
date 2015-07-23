<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

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
            url: "",	  // 조회(전체, 검색) 기능을 수행하는 서버 경로
            editurl: "", // 삽입, 삭제, 변경 기능을 수행하는 서버 경로
            datatype: "",
            pager: '#pager',
            caption: 'Equipment',
            height: '100%',
            rowNum: 10,							 // 한 페이지에 표시될 행 갯수
            rowList: [10, 20, 30],				 // rowNum 에 대한 선택 옵션
            colNames: ['equipno', 'equipName', 'modelName', 'equipPrice', 'equipContent', 'equipDeleted', 'image'], // 헤더 부분
            colModel: [														 // 바인딩 될 데이터
                { name: 'Equipment', index: 'id', width: 30 },
                { name: 'name', index: 'name', width: 230, editable: true, edittype: 'text' },
                { name: 'author', index: 'author', width: 90, editable: true, edittype: 'text' },
                { name: 'publisher', index: 'publisher', width: 80, editable: true, edittype: 'text' },
                { name: 'isbn', index: 'isbn', width: 80, editable: true, edittype: 'text' },
                { name: 'page', index: 'page', width: 40, editable: true, edittype: 'text' },
                { name: 'image', index: 'image', width: 40, editable: true, edittype: 'text' }
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
