package com.sdp.edu.server;

import org.springframework.beans.factory.annotation.Autowired;

import com.sdp.edu.bean.T_MALL_USER_ACCOUNT;
import com.sdp.edu.mapper.UserMapper;
import com.sdp.edu.utils.MyRoutingDataSource;

public class UserLoginServerImp implements UserLoginServer {
	@Autowired
	private UserMapper userMapper;

	@Override
	public T_MALL_USER_ACCOUNT login_string_datasource1(String yh_mch, String yh_mm) {
		
		MyRoutingDataSource.setKey("d1");
		return userMapper.select_user_by_string(yh_mch, yh_mm);
	}

	@Override
	public T_MALL_USER_ACCOUNT login_string_datasource2(String yh_mch, String yh_mm) {
		MyRoutingDataSource.setKey("d2");
		return userMapper.select_user_by_string(yh_mch, yh_mm);
	}

	@Override
	public T_MALL_USER_ACCOUNT login_user_datasource1(T_MALL_USER_ACCOUNT user) {
		//测试并发
		/*try {
			Thread.sleep(5000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}*/
		MyRoutingDataSource.setKey("d1");
		return userMapper.select_user_by_bean(user);
	}

	@Override
	public T_MALL_USER_ACCOUNT login_user_datasource2(T_MALL_USER_ACCOUNT user) {
		MyRoutingDataSource.setKey("d2");
		return userMapper.select_user_by_bean(user);
	}

}
