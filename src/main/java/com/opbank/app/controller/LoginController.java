package com.opbank.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.opbank.app.dto.UserRegistrationDTO;
import com.opbank.app.entity.UserLogin;
import com.opbank.app.service.UserService;

@Controller
public class LoginController {

	@Autowired
	private UserService userService;

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

	@ModelAttribute("UserRegistration")
	public UserRegistrationDTO userRegistrationDTO() {
		System.out.println("Inside user register dto");
		return new UserRegistrationDTO();
	}

	@PostMapping("/registration")
	public String registerUser(@ModelAttribute("UserRegistration") UserRegistrationDTO registerDto, RedirectAttributes redirectAttr) {
		System.out.println("inside show registration form");
		String msg = "";
		try {
			userService.save(registerDto);
			System.out.println("Updated register user");
			msg = " You have successfully registered, please go back and login to your account";
		} catch (Exception e) {
			System.out.println("Inside controller post method exception");
			msg = " There is an error registering your profile, please contact customer support";			
			e.printStackTrace();
		}
		redirectAttr.addFlashAttribute("message", msg);
		return "redirect:/register";
	}

	
	  @RequestMapping(value = "/login", method = RequestMethod.GET) 
	  public String afterRegister(Model model) {
			System.out.println("inside login get method");
			model.addAttribute("user", new UserLogin());
			System.out.println(model.getAttribute("user"));
			System.out.println("inside login get method after register"); 
			return "login";
	  }
	 
	@GetMapping("/register")
	public String showRegistrationForm(Model model) {
		return "Registration"; 
	}
	
	@GetMapping("/forgotDetails")
	public String showForgotDetailsForm(Model model) {
		return "forgotDetails"; 
	}
}
