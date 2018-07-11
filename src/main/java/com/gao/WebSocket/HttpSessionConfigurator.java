package com.gao.WebSocket;

import org.springframework.stereotype.Component;

import javax.servlet.http.HttpSession;
import javax.websocket.ClientEndpointConfig;
import javax.websocket.HandshakeResponse;
import javax.websocket.server.HandshakeRequest;
import javax.websocket.server.ServerEndpointConfig;

/**
 * 将request中的session信息存入到wensocket中
 */

public class HttpSessionConfigurator extends ServerEndpointConfig.Configurator {
   /* @Override
    public void modifyHandshake(ServerEndpointConfig sec, HandshakeRequest request, HandshakeResponse response){
        HttpSession session = (HttpSession) request.getHttpSession();
        sec.getUserProperties().put(HttpSession.class.getName(),session);
    }*/

}
