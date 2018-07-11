package com.gao.test;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.Transaction;

import java.util.List;

public class MyRunnable implements Runnable{
	String watchKeys ="watchKeys";//监视keys
	Jedis jedis = new Jedis("127.0.0.1",6379);
	String userInfo;
	
	public MyRunnable(){
		
	}
	public MyRunnable(String uInfo){
		this.userInfo = uInfo;
	}

	public void run() {
		try{
			jedis.watch(watchKeys);
			String val = jedis.get(watchKeys);
			int valint = Integer.parseInt(val);
			if(valint<=100 && valint>=1){
				Transaction tx = jedis.multi();//开启事物
				tx.incrBy("watchKeys",-1);
				List<Object> list = tx.exec();
				if(list==null || list.size()==0){
					String userInfo1 = "用户"+userInfo;
					String failInfo = "用户"+userInfo1+"抢购商品失败";
					System.out.println(failInfo);
					/**抢购失败的业务逻辑**/
					jedis.setnx(userInfo1,failInfo);
				}else{
					for(Object succ:list){
						String userInfo1 = "用户"+userInfo;
						String winner =userInfo1+"抢购成功"+succ.toString();
						String winnerInfo = winner+"！商品还剩"+(100-valint);
						System.out.println(winnerInfo);
						/**抢购成功的业务逻辑**/
						jedis.setnx(winner,winnerInfo);
					}

				}
			}else{
				String failInfo = userInfo+"很遗憾！商品已被抢购一空！";
				System.out.println(failInfo);
				jedis.setnx(failInfo,failInfo);
				return;
			}
		}catch(Exception e){
			e.printStackTrace();

		}finally{
			jedis.close();
		}
	}
}