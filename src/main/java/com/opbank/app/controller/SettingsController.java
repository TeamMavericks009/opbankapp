package com.opbank.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
* <h1>Settings Controller</h1>
* This controller is called for the user to handle settings
* Handles POST and GET methods
* response will be given Model Attribute and Templates source
* <p>
* 
*
* @author  Preethi Sreeramula
* @version 4.0
* @since   2023-10-27
*/
@Controller
public class SettingsController {

	/** 
	   * This method is to display settings Template
	   *  A GET method,
	   * @param Model,
	   * @return Settings template
	   * */
	@RequestMapping(value = "/settings", method = RequestMethod.GET)
	public String getAccountsSummary(Model model) {
		System.out.println("inside settings page");
		return "settings";
	}
}
