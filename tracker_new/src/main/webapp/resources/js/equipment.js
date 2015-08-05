
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

    