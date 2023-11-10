package com.opbank.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.opbank.app.dto.BankInfoDto;
import com.opbank.app.dto.UserInfoDto;
import com.opbank.app.entity.UserLogin;
import com.opbank.app.service.BankService;
import com.opbank.app.service.UserService;

/**
* <h1>Dashboard Controller</h1>
* This controller is called upon succesfull login into AOP Bank
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
@SessionAttributes("accountInfo")
public class DashboardController {

	@Autowired
	private UserService userService;

	@Autowired
	private BankService bankService;

	
	/** 
	   * Read login form information, validates user login 
	   * A POST method, carry login details
	   * @param Model, UserInfoDto model
	   * @return upon conditional check Dashboard or redirect to Login Templates
	   * */
	@RequestMapping(value = "/dashboard", method = RequestMethod.POST)
	public String Login(Model model, @ModelAttribute UserInfoDto user, RedirectAttributes redirectAttr) {

		model.addAttribute("user", new UserLogin());
		System.out.println("inside dashboard post method");
		long userId = userService.getUserInfo(user);
		if (userId > 0) {
			BankInfoDto bankInfoDto = bankService.getBankAccountInfo(userId);
			bankInfoDto.setTotalBalance("$"+bankInfoDto.getTotalBalance());
			model.addAttribute("accountInfo", bankInfoDto);
			System.out.println(bankInfoDto.getOutFlow() + "outflow fromc controller");
			return "dashboard";
		}
		redirectAttr.addFlashAttribute("loginError", "Invalid username or password, please try again.");
		System.out.println(redirectAttr.toString());
		return "redirect:/login";
	}

	/** 
	   * Loads Dashboard template 
	   * A GET method, carry login details
	   * @param Model, UserInfoDto model
	   * @return dashboard template
	   * */
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String userDashboard(Model model) {
		model.addAttribute("user", new UserLogin());
		System.out.println("inside dashboard GEt method");
		return "dashboard";
	}

	
	/** 
	   * Loads account template 
	   * GET method returns Bank details
	   * @param Model, UserInfoDto model
	   * @return dashboard template
	   * */
	@RequestMapping(value = "/accounts", method = RequestMethod.GET)
	public String afterRegister(Model model) {
		model.addAttribute("user", new UserLogin());
		BankInfoDto bankInfoDto = bankService.getBankAccountInfo(1);
		model.addAttribute("accountInfo", bankInfoDto);
		return "accounts";
	}

	/** 
	   * Loads statements template 
	   * @param Model, 
	   * @return statements template
	   * */
	@RequestMapping(value = "/statements", method = RequestMethod.GET)
	public String statements(Model model) {
		model.addAttribute("user", new UserLogin());
		return "statements";
	}
}
