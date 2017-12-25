package com.sdp.edu.server;

import javax.jws.WebService;

import com.sdp.edu.bean.T_MALL_USER_ACCOUNT;

@WebService
public interface UserLoginServer_rs {

	String login_user(T_MALL_USER_ACCOUNT user);

	String login_string(String yh_mch, String yh_mm);

}
