package com.snut.cse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@RequestMapping("/login")
	public ModelAndView showMessage() {
		System.out.println("login controller");
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}
}