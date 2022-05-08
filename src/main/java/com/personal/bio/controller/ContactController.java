package com.personal.bio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/personal")
public class ContactController {

	@RequestMapping(value="/contact")
	public ModelAndView contact() {
		System.out.println("contact page!..");
		ModelAndView model = new ModelAndView("/personal/contact");
		return model;
	}
}