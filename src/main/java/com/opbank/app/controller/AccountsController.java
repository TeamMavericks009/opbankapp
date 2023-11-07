package com.opbank.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.opbank.app.dto.FundTransferDto;
import com.opbank.app.service.FundTransferService;

@Controller
public class AccountsController {
	
	@Autowired
	FundTransferService fundsService;
	
	@RequestMapping(value = "/getPayee", method = RequestMethod.GET)
	public FundTransferDto getPayeeDetails(Model model, String payeeName) {
		
		if(payeeName != null) {
			FundTransferDto payee =	fundsService.getPayee(payeeName);
			model.addAttribute("payeeInfo", payee);
			return payee;
		}
		return null;
	}
	
	@RequestMapping(value = "/addPayee", method = RequestMethod.POST)
	public String savePayee(Model model, @ModelAttribute FundTransferDto fundsDto) {
		boolean isSaved = fundsService.savePayee(fundsDto);
		if(isSaved) {
			model.addAttribute("infoMsg", "saved payee successfully!");
			return "addPayee";
		}
		model.addAttribute("infoMsg", "Error saving payee!");
		return "addPayee";
	}
	
	@RequestMapping(value = "/getAllPayees", method = RequestMethod.GET)
	public String getAllPayees(Model model) {
		System.out.println("Inside get all payees");
		List<FundTransferDto> payeesList= fundsService.getAllPayees(1);
		if(payeesList != null) {
			System.out.println("Inside payyesLIst if loop");
			model.addAttribute("payeesList", payeesList);
			return "accountSummary";
		}
		return "accountSummary";
	}
	
	 @RequestMapping(value = "/accountSummary", method = RequestMethod.GET) 
	 public String getAccountsSummary(Model model) {
	 System.out.println("inside accounts summary"); 
	 return "accountSummary"; 
	 }
}
