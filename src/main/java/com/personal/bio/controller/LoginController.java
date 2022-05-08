package com.personal.bio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.personal.bio.mongo.service.UserService;

@Controller
public class LoginController {

	@Autowired
	UserService userService;
	
	
	@GetMapping(value="/login")
	public ModelAndView login() {
		System.out.println("Welcome to login page!..");
		ModelAndView model = new ModelAndView("login");

		return model;
	}
	

}
