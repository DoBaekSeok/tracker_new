$(function() {
	$('#dialog').dialog({
		autoOpen: false,
	    resizable: false,
	});
	
	$('#button_open_dialog').click( function(){
		$('#dialog').dialog('open');
	});
	
	$("#sendBtn").click(function(){
		sendMessage();		
    });
	
	$("#message").keydown(function(key){
		if(key.keyCode == 13){			
			sendMessage();		
		}		
	});
});

//websocket을 지정한 URL로 연결	
var url = $(location).attr("protocol") + "//" + $(location).attr("host") + "/tracker/echo/";	
var sock = new SockJS(url);	

//websocket 서버에서 메시지를 보내면 자동으로 실행된다.
sock.onmessage = onMessage;

//websocket 과 연결을 끊고 싶을때 실행하는 메소드
sock.onclose = onClose;

function sendMessage(){
	//websocket으로 메시지를 보내겠다.
    sock.send($("#message").val());    
}
        
//evt 파라미터는 websocket이 보내준 데이터다.
function onMessage(event){
    var data = event.data;
    $("#data").append(data + "<br />");
    $("#data").scrollTop($("#data").prop("scrollHeight"));
    $("#message").val('').focus();	    
    /* sock.close(); */
}

function onClose(event){
    $("#data").append("연결 끊김");
    $("#data").scrollTop($("#data").prop("scrollHeight"));
}