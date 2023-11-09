package com.opbank.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.opbank.app.dto.FundTransferDto;
import com.opbank.app.dto.TransactionDto;
import com.opbank.app.entity.UserLogin;
import com.opbank.app.service.FundTransferService;
import com.opbank.app.service.TransactionService;

@Controller
public class TransactionController {

	@Autowired
	TransactionService transactionService;

	@Autowired
	FundTransferService fundsTransferService;

	
	@RequestMapping(value = "/user_transactions", method = RequestMethod.GET)
	public String userDashboard(Model model) {
		model.addAttribute("user", new UserLogin());
		List<TransactionDto> transList = transactionService.getAllUserTransactions(1);
		System.out.println(transList.size() + " Size of list");
		System.out.println(transList.get(0).getTransactionNo());

		model.addAttribute("transaction", transList);
		return "userTransactions";
	}

	@PostMapping("/fund_transfer")
	public String fundTransfer(@ModelAttribute("FundsTransfer") FundTransferDto fundsDto,
			RedirectAttributes redirectAttr, BindingResult result) throws Exception {
		String msg = "Error while transfering funds";
		System.out.println("funds post");
	
		if (transactionService.fundTransfer(fundsDto)) {
			msg = "Money transfer to " + fundsDto.getPayeeName() + " is succesful";
		}
		redirectAttr.addFlashAttribute("message", msg);
		return "fundsTransfer";
	}

	
	@RequestMapping(value = "/fundsTransfer", method = RequestMethod.GET)
	public String getFundTransfer(Model model, RedirectAttributes redirectAttr) {
		System.out.println("Inside funds get method");
		List<FundTransferDto> payeeList = fundsTransferService.getAllPayees(1);
		model.addAttribute("payees",payeeList);
	    if (!model.containsAttribute("fundsTransfer")) {
	        model.addAttribute("fundsTransfer", new FundTransferDto());
	    }
	    
	    List<TransactionDto> transList = transactionService.getAllUserTransactions(1);
		System.out.println(transList.size() + " Size of list");
		System.out.println(transList.get(0).getTransactionNo());

		model.addAttribute("transaction", transList);
	    
	    // The rest of your code to add payees to the model
	    return "fundsTransfer";
	}
	
	 
}
