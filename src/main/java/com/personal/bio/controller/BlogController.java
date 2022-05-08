package com.personal.bio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/personal")
public class BlogController {

	@RequestMapping(value="/blog")
	public ModelAndView blog() {
		System.out.println("blog page!..");
		ModelAndView model = new ModelAndView("/personal/blog");
		return model;
	}
	
	
	@RequestMapping(value="/singleblog")
	public ModelAndView singleblog() {
		System.out.println("single blog page!..");
		ModelAndView model = new ModelAndView("/personal/singleblog");
		return model;
	}
}