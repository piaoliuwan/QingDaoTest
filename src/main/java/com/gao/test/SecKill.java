/*

引入JAVA的redis操作库：Jedis，这里用的是jedis-2.9.0.jar
<!-- https://mvnrepository.com/artifact/redis.clients/jedis -->
<dependency>
    <groupId>redis.clients</groupId>
    <artifactId>jedis</artifactId>
    <version>2.9.0</version>
</dependency>

*/
package com.gao.test;
import redis.clients.jedis.Jedis;

import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class SecKill{
	public static void main(String[] args){
		final String watchKeys="watchKeys";
		ExecutorService es = Executors.newFixedThreadPool(20);//有20个并发数的线程池
		final Jedis jedis = new Jedis("127.0.0.1",6379);
		jedis.set(watchKeys,"100");//初始抢购数
		jedis.close();
		for(int x=0;x<10000;x++){

			es.execute(new MyRunnable("user"+getRandomString(6)));
		}
	}
	
	//模拟用户信息
	public static String getRandomString(int length){
		String base = "abcdefghijklmnopqrstuvwxyz0123456789";
		Random random = new Random();
		StringBuffer sb = new StringBuffer();
		for(int x=0;x<length;x++){
			int number = random.nextInt(base.length());
			sb.append(base.charAt(number));
		}
		return sb.toString();
	}
	
}
