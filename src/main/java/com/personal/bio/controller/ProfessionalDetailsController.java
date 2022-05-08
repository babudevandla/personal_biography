package com.personal.bio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/personal")
public class ProfessionalDetailsController {

	
	@RequestMapping(value="/professional")
	public ModelAndView professionalDetails() {
		System.out.println("Welcome to professional page!..");
		ModelAndView model = new ModelAndView("/personal/professional");
		return model;
	}
}
