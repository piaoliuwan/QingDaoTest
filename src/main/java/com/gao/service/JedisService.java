package com.gao.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

@Service
public class JedisService {
    @Autowired
    private JedisPool jedisPool;

    public Jedis getSource(){
        return jedisPool.getResource();
    }

    public String setStringValue(String key,String value){
        Jedis jedis = getSource();
        String result = jedis.set(key,value);
        jedis.close();
        return result;
    }
}