package com.snut.cse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BootstrapController {
	@RequestMapping("/bootstrap")
	public ModelAndView showMessage() {
		System.out.println("bootstrap controller");
		ModelAndView mv = new ModelAndView("bootstrap");
		return mv;
	}
}
