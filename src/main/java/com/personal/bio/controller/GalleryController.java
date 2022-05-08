package com.personal.bio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/personal")
public class GalleryController {

	@RequestMapping(value="/gallery")
	public ModelAndView gallery() {
		System.out.println("gallery page!..");
		ModelAndView model = new ModelAndView("/personal/gallery");
		return model;
	}
}
