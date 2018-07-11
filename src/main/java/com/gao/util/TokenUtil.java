package com.gao.util;

import org.apache.commons.lang3.RandomStringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class TokenUtil {
    public static final String TOKEN_KEY_NUM = "_TOKEN_NUM";

    /**
     * 生成token值
     * @param
     * @return
     */
    public static String createToken(String tokenKey){

        String token = RandomStringUtils.random(20, "Token");

        return token;
    }
    public static  void main(String [] ards){
       System.out.println(createToken("Token"));
    }
}
