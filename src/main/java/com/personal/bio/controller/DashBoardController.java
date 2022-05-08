package com.personal.bio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/personal")
public class DashBoardController {


	@GetMapping("/dashboard")
	public ModelAndView home() {
		System.out.println("Welcome to dashboard!..");
		ModelAndView model = new ModelAndView("/personal/dashboard");
		return model;
	}
}
