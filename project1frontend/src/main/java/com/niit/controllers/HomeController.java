package com.niit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController 
{
	public HomeController() {
		System.out.println("Home Controller Bean has been created");
	}
	@RequestMapping(value="/home")
	public String getAllProducts(Model m)
	{
		
		return "home";
	}
}
