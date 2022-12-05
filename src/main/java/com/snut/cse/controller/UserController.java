package com.snut.cse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.snut.cse.model.UserVO;
import com.snut.cse.service.UserService;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping(value = "/user")

public class UserController {

	@Autowired
	private UserService userservice;

	// enter JOIN page
	@RequestMapping(value="join", method=RequestMethod.GET)
	public void joinGET() {
		// Logger.info("회원가입 페이지 진입");
		System.out.println("회원가입 페이지 진입");
	}

	// enter LOGIN page
	@RequestMapping(value="login", method=RequestMethod.GET)
	public void loginGET() {
		// Logger.info("로그인 페이지 진입");
		System.out.println("로그인 페이지 진입");
	}

	// JOIN
	@RequestMapping(value="join", method=RequestMethod.POST)
	public String joinPOST(UserVO user) throws Exception {
		System.out.println("회원가입");
		userservice.userJoin(user);
		return "redirect:/main";
	}
}
