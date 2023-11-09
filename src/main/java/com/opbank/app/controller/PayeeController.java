package com.opbank.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.opbank.app.dto.FundTransferDto;
import com.opbank.app.service.FundTransferService;

@Controller
public class PayeeController {
	
	@Autowired
	FundTransferService fundsService;

	
	@RequestMapping(value = "/getAllPayees", method = RequestMethod.GET)
	public String getAllPayees(Model model) {
		System.out.println("Inside get all payees");
		List<FundTransferDto> payeesList = fundsService.getAllPayees(1);
		if (payeesList != null) {
			System.out.println("Inside payyesLIst if loop");
			model.addAttribute("payeesList", payeesList);
			return "test_payees";
		}
		return "test_payees";
	}
	
	@GetMapping(value = "/showPayees")
	public String showPayees(Model model) {
		System.out.println("Inside get all payees");
		List<FundTransferDto> payeesList = fundsService.getAllPayees(1);
		if (payeesList != null) {
			System.out.println("Inside payyesLIst if loop");
			model.addAttribute("payeesList", payeesList);
			return "fundsTransfer";
		}
		return "fundsTransfer";
	}
}
