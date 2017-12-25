package com.sdp.edu.server;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.ws.rs.BeanParam;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

import org.springframework.beans.factory.annotation.Autowired;

import com.google.gson.Gson;
import com.sdp.edu.bean.T_MALL_USER_ACCOUNT;
import com.sdp.edu.mapper.UserMapper;

public class UserLoginServerImp_rs implements UserLoginServer_rs {
	@Autowired
	private UserMapper userMapper;

	@Override
	@GET
	@Path("/login_string")
	@Consumes("application/x-www-form-urlencoded")
	@Produces("application/json")
	public String login_string(@FormParam("yh_mch") String yh_mch, @FormParam("yh_mm") String yh_mm) {
		// TODO Auto-generated method stub
		T_MALL_USER_ACCOUNT user = userMapper.select_user_by_string(yh_mch, yh_mm);
		Gson gson = new Gson();
		String json = gson.toJson(user);
		/*try {
			json=URLEncoder.encode(json, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}*/
		return json;
	}

	@Override
	@GET
	@Path("/login_user")
	@Consumes("application/x-www-form-urlencoded")
	@Produces("application/json")
	public String login_user(@BeanParam T_MALL_USER_ACCOUNT user) {

		T_MALL_USER_ACCOUNT suser = userMapper.select_user_by_bean(user);
		Gson gson = new Gson();
		String json = gson.toJson(suser);
		try {
			json=URLEncoder.encode(json, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return json;
	}

}
