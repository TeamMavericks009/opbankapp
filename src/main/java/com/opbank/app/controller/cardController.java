package com.opbank.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class cardController {

	 @RequestMapping(value = "/viewCards", method = RequestMethod.GET) 
	 public String getAccountsSummary(Model model) {
	 System.out.println("inside bank cards page"); 
	 return "cards"; 
	 }
}
