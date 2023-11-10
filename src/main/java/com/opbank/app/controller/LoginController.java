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

import com.opbank.app.dto.UserRegistrationDto;
import com.opbank.app.entity.UserLogin;
import com.opbank.app.service.UserService;

/**
* <h1>Login Controller</h1>
* This controller is called upon launching login page for AOP Bank
* Handles POST and GET methods
* response will be given Model Attribute and Templates source
* <p>
* 
*
* @author  Preethi Sreeramula
* @version 4.0
* @since   2023-10-17
*/
@Controller
public class LoginController {

	@Autowired
	private UserService userService;

	/** 
	   * This method is to display login page 
	   * A GET method,
	   * @param Model,
	   * @return login template
	   * */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String displayLogin(Model model) {
		model.addAttribute("user", new UserLogin());
		return "login";
	}

	/** 
	   * This method to add UserRegistrationDto to Model attribute
	   * @return UserRegistrationDto Object
	   * */
	@ModelAttribute("UserRegistration")
	public UserRegistrationDto userRegistrationDTO() {
		return new UserRegistrationDto();
	}


	/** 
	   * This method calls upon registering for first time 
	   * A POST method,
	   * @param UserRegistrationDto,
	   * @return carrying Redirect Attributes, loads register template
	   * */
	@PostMapping("/registration")
	public String registerUser(@ModelAttribute("UserRegistration") UserRegistrationDto registerDto,
			RedirectAttributes redirectAttr) {
		System.out.println("inside show registration form");
		String msg = "";
		try {
			boolean isSaved = userService.save(registerDto);
			System.out.println("Updated register user");
			if (isSaved)
				msg = "✓  You have successfully registered, please go back and login to your account";
			else
				msg = "✕ Already have an account, please go back and login to your account";
		} catch (Exception e) {
			System.out.println("Inside controller post method exception");
			msg = " There is an error registering your profile, please contact customer support";
			e.printStackTrace();
		}
		redirectAttr.addFlashAttribute("message", msg);
		return "redirect:/register";
	}

	/** 
	   * This method is post registration when user navigated to Login page 
	   * A GET method,
	   * @param Model,
	   * @return Model attribute carry userLogin
	   * */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String afterRegister(Model model) {
		model.addAttribute("user", new UserLogin());
		return "login";
	}

	/** 
	   * Get method to load registration template
	   * @param Model,
	   * @return template string Registration
	   * */
	@GetMapping("/register")
	public String showRegistrationForm(Model model) {
		return "Registration";
	}

	/** 
	   * Get method to load  forgot password page
	   * @param Model,
	   * @return String template forgotDetails
	   * */
	@GetMapping("/forgotDetails")
	public String showForgotDetailsForm(Model model) {
		return "forgotDetails";
	}

	/** 
	   * POST method to carry forgot password details
	   * @param UserRegistrationDto,
	   * @return Add flast attributes for message, redirect to login
	   * */
	@PostMapping("/forgotPassword")
	public String forgotUser(@ModelAttribute("UserRegistration") UserRegistrationDto registerDto,
			RedirectAttributes redirectAttr) {
		System.out.println("inside show registration form");
		String msg = "";
		try {
			userService.forgotPassword(registerDto);
			System.out.println("Updated register user");
			msg = " You have successfully resetted your password, please go back and login to your account";
			redirectAttr.addFlashAttribute("message", msg);
		} catch (Exception e) {
			System.out.println("Inside controller post method exception");
			msg = " There is an error resetting your profile, please contact customer support";
			redirectAttr.addFlashAttribute("message", msg);
		}
		redirectAttr.addFlashAttribute("message", msg);
		return "redirect:/login";
	}
}
