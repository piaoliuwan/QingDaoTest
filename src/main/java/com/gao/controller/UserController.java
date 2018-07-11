package com.gao.controller;

import com.gao.WebSocket.WSServer;
import com.gao.dao.UserMapper;
import com.gao.entity.User;
import com.gao.service.JedisService;
import com.gao.service.RedisCacheUtil;
import com.gao.util.ResultDto;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import sun.rmi.runtime.Log;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class UserController {
    Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserMapper userMapperDAO;
    @Autowired
    private JedisService jedisService;


    private WSServer wsServer = new WSServer();


    @RequestMapping(value = "/insert")
    public void insert(HttpServletRequest request, HttpServletResponse response){

        User user = new User();
        user.setUsername("xiaoming");
        user.setPassword("12345");
        user.setLoginname("mm");
        user.setIphone("123");
        user.setIdcard("11111000");
        int x = userMapperDAO.insert(user);
        System.out.println(x);
    }

    @RequestMapping(value = "/registUser")
    @ResponseBody
    public ResultDto registUser(HttpServletRequest request, HttpServletResponse response){
        String username = request.getParameter("rusername");
        String iphone = request.getParameter("iphone");
        String idcard=request.getParameter("idcard");
        String loginname = request.getParameter("loginname");
        String rpassword = request.getParameter("rpassword");
        User user = new User();
        user.setIdcard(idcard);
        user.setIphone(iphone);
        user.setLoginname(loginname);
        user.setPassword(rpassword);
        user.setUsername(username);
        //int x=userMapperDAO.insert(user);
        jedisService.setStringValue(username,idcard);
        //redisCacheUtil.setCacheObject(username,idcard);
        ResultDto resultDto = new ResultDto();
        resultDto.setStatus("true");
        return resultDto;

    }

    @Scheduled(initialDelay = 10 * 1000,  fixedDelay= 30000)
    public void str() throws Exception{
        System.out.println("qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq");
        Thread.sleep(10*1000);
        wsServer.sendMessageToUser(Long.valueOf("66"),"1235");
    }
}
