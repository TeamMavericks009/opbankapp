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

@Controller
@SessionAttributes("accountInfo")
public class DashboardController {

	@Autowired
	private UserService userService;

	@Autowired
	private BankService bankService;

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

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String userDashboard(Model model) {
		model.addAttribute("user", new UserLogin());
		System.out.println("inside dashboard GEt method");
		return "dashboard";
	}

	@RequestMapping(value = "/accounts", method = RequestMethod.GET)
	public String afterRegister(Model model) {
		model.addAttribute("user", new UserLogin());
		BankInfoDto bankInfoDto = bankService.getBankAccountInfo(1);
		model.addAttribute("accountInfo", bankInfoDto);
		System.out.println("inside accounts GEt method");
		return "accounts";
	}

	@RequestMapping(value = "/statements", method = RequestMethod.GET)
	public String statements(Model model) {
		model.addAttribute("user", new UserLogin());
		System.out.println("inside accounts GEt method");
		return "statements";
	}
}
