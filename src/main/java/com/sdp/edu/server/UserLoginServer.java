package com.sdp.edu.server;

import javax.jws.WebService;

import com.sdp.edu.bean.T_MALL_USER_ACCOUNT;

@WebService
public interface UserLoginServer {
	public abstract T_MALL_USER_ACCOUNT login_string_datasource1(String yh_mch, String yh_mm);

	public abstract T_MALL_USER_ACCOUNT login_string_datasource2(String yh_mch, String yh_mm);

	public abstract T_MALL_USER_ACCOUNT login_user_datasource1(T_MALL_USER_ACCOUNT user);

	public abstract T_MALL_USER_ACCOUNT login_user_datasource2(T_MALL_USER_ACCOUNT user);
}
