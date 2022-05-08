package com.personal.bio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/personal")
public class AboutUsController {

	@RequestMapping(value="/about")
	public ModelAndView about() {
		System.out.println("Welcome to about page!..");
		ModelAndView model = new ModelAndView("/personal/aboutus");
		return model;
	}
}
