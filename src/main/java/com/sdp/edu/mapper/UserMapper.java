package com.sdp.edu.mapper;

import com.sdp.edu.bean.T_MALL_USER_ACCOUNT;

public interface UserMapper {


	T_MALL_USER_ACCOUNT select_user_by_string(String yh_mch, String yh_mm);

	T_MALL_USER_ACCOUNT select_user_by_bean(T_MALL_USER_ACCOUNT user);

}
