package com.opbank.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SettingsController {

	@RequestMapping(value = "/settings", method = RequestMethod.GET)
	public String getAccountsSummary(Model model) {
		System.out.println("inside settings page");
		return "settings";
	}
}
