package com.snut.cse.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snut.cse.mapper.UserMapper;
import com.snut.cse.model.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserMapper usermapper;

	@Override
	public void userJoin(UserVO user) throws Exception {
		usermapper.userJoin(user);
	}
}
