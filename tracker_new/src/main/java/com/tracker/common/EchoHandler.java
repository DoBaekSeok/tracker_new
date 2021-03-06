package com.tracker.common;
 
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;
 
public class EchoHandler extends TextWebSocketHandler{

    private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
    private String[] msg;
    
    @Override
    public void afterConnectionEstablished(WebSocketSession session)
            throws Exception {
        sessionList.add(session);
        System.out.println("{ " + session.getId() + " } 연결됨");         
    }

    @Override
    protected void handleTextMessage(WebSocketSession session,
            TextMessage message) throws Exception {
    	System.out.println("{ " + session.getId() + " } 로부터 { " + message.getPayload() + " } 받음");

    	msg = message.getPayload().split("#@#%&@@#@!");
    	
        for(WebSocketSession sess : sessionList){ 
            sess.sendMessage(new TextMessage(msg[0] + " 님 : " + msg[1]));            
        }
    }    
    
    @Override
    public void afterConnectionClosed(WebSocketSession session,
            CloseStatus status) throws Exception {
        sessionList.remove(session);
     
        System.out.println("{ " + session.getId() + " } 연결종료");        
    }
    
}