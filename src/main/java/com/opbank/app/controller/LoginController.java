package com.opbank.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.opbank.app.entity.UserLogin;

@Controller
public class LoginController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET) 
	public String displayLogin(Model model) { 
		System.out.println("inside login get method");
	    model.addAttribute("user", new UserLogin());
	    System.out.println(model.getAttribute("user"));
	    return "login"; 
	}
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.POST) 
	public String Login(Model model, @ModelAttribute UserLogin user) { 
		System.out.println("inside login post method");
	    model.addAttribute("user", new UserLogin());
	    System.out.println(user.getUserName());
	    System.out.println(user.getEncryptedPassword());
	    return "dashboard"; 
	} 
}
