package com.opbank.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.opbank.app.dto.TransactionDto;
import com.opbank.app.entity.UserLogin;
import com.opbank.app.service.TransactionService;

@Controller
public class TransactionController {
	
	@Autowired
	TransactionService transactionService;
	
	@RequestMapping(value = "/user_transactions", method = RequestMethod.GET) 
	  public String userDashboard(Model model) {
			model.addAttribute("user", new UserLogin());
			List<TransactionDto> transList = transactionService.getAllUserTransactions(1);
			System.out.println(transList.size() + " Size of list");
			System.out.println(transList.get(0).getTransactionNo());
			
			model.addAttribute("transaction", transList);
			return "userTransactions";
	  }
	
}

