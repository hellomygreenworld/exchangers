package com.snut.cse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {
	@RequestMapping("/test")
	public ModelAndView showMessage() {
		System.out.println("test controller");
		ModelAndView mv = new ModelAndView("test");
		return mv;
	}
}
