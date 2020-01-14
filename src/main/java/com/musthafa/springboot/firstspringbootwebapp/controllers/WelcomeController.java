package com.musthafa.springboot.firstspringbootwebapp.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WelcomeController {
	@GetMapping("/")
	public String showLoginPage(ModelMap model) {
		return "welcome";
	}
}
