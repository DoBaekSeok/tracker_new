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
            { name: 'boardNo', index: 'boardNo', width:(pageWidth*(10/100)),key: true },
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
        colNames: ['NO', '제목', '작성자', '작성일', '내용보기'],
        colModel: [
            { name: 'boardNo', index: 'boardNo', width:(pageWidth*(10/100)) },
            { name: 'boardTitle', index: 'boardTitle', width:(pageWidth*(50/100)), editable: false, edittype: 'text' },
            { name: 'boardWriter', index: 'boardWriter', width:(pageWidth*(10/100)), editable: false, edittype: 'text' },
            { name: 'boardRegDate', index: 'boardRegDate', width:(pageWidth*(20/100)), editable: false, formatter: 'date', formatoptions: { newformat: 'Y-m-d H:i:s'}},
            { name: 'view', index: 'view', width:(pageWidth*(10/100)), editable: false, formatter: viewcontent}
        ],
        height: '100%',
        rowNum: 5,									//한 페이지에 표시될 행 갯수
        rowList: [5, 10, 15],						//rowNum에 대한 선택 옵션
        pager: '#bpager2',
        sortname: 'boardNo',
        viewrecords: true,
        sortorder: "desc"
    });
	$('#bgrid2').jqGrid('navGrid', '#bpager2', { add:true,edit:false,del:false,search:true });
	function viewcontent(cellValue, options, rowdata) {
        return "<a href='http://www.google.com' >내용보기</a>";
    } 
});
$(document).ready(function () {
	var pageWidth = $("#cgrid3").parent().width() - 100;
	$('#cgrid3').jqGrid({
        url: 'listjason.action?boardkind=community',			//조회(전체, 검색) 기능을 수행하는 서버 경로
        datatype: 'json',
        colNames: ['NO', '제목', '작성자', '작성일', '내용보기'],
        colModel: [
            { name: 'boardNo', index: 'boardNo', width:(pageWidth*(10/100)) },
            { name: 'boardTitle', index: 'boardTitle', width:(pageWidth*(50/100)), editable: false, edittype: 'text' },
            { name: 'boardWriter', index: 'boardWriter', width:(pageWidth*(10/100)), editable: false, edittype: 'text' },
            { name: 'boardRegDate', index: 'boardRegDate', width:(pageWidth*(20/100)), editable: false, formatter: date},
            { name: 'view', index: 'view', width:(pageWidth*(10/100)), editable: false, formatter: viewcontent}
        ],
        height: '100%',
        rowNum: 5,									//한 페이지에 표시될 행 갯수
        rowList: [5, 10, 15],						//rowNum에 대한 선택 옵션
        pager: '#cpager3',
        sortname: 'boardNo',
        viewrecords: true,
        sortorder: "desc"
    });
	$('#cgrid3').jqGrid('navGrid', '#cpager3', { add:true,edit:false,del:false,search:true });
	function viewcontent(cellValue, options, rowdata) {
        return "<a href='http://www.google.com' >내용보기</a>";
    }
});