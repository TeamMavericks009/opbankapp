package com.opbank.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.opbank.app.model.User;

@Controller
public class LoginController {
	
	@GetMapping("/")
    public String index() {
        return "login"; // This will look for 'index.html' in the templates folder
    }
	
	
	
	@PostMapping("/dashboard")
	public String userLogin(@ModelAttribute User user, Model model) {
		System.out.println("test");
		model.addAttribute("Firstname", user.getUsername());
		model.addAttribute("Password", user.getPasswd());
		return "dashboard"; // Redirect to dashboard.html after processing the POST request
	}
}
