package com.gao.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Service;

public class RedisCacheUtil {


    public RedisTemplate redisTemplate;

    public <T> ValueOperations<String,T> setCacheObject(String key, T value)
    {

        ValueOperations<String,T> operation = redisTemplate.opsForValue();
        operation.set(key,value);
        return operation;
    }
}
