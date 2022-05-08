package com.personal.bio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView model = new ModelAndView("login");
		model.setViewName("redirect:/login");
		return model;
	}
}
