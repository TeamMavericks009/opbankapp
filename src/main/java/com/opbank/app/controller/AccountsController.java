package com.opbank.app.controller;

/**
* <h1>Accounts Controller</h1>
* This controller fetches information related to account summary, adding and getting payee
* Handles POST and GET methods
* response will be given Model Attribute
* <p>
* 
*
* @author  Preethi Sreeramula
* @version 4.0
* @since   2023-10-18
*/

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

	/** 
	   * This method is used to fetch details of the Payee liked to bank user. 
	   * A GET method called upon loading of FundsTransfer html page
	   * @param Model, PayeeName
	   * @return FundsTrasferDto.
	   * */
	@RequestMapping(value = "/getPayee", method = RequestMethod.GET)
	public FundTransferDto getPayeeDetails(Model model, String payeeName) {

		if (payeeName != null) {
			FundTransferDto payee = fundsService.getPayee(payeeName);
			model.addAttribute("payeeInfo", payee);
			return payee;
		}
		return null;
	}

	/** 
	   * This method is used to add details of the Payee liked to bank user. 
	   * A POST method called upon loading of FundsTransfer html page
	   * @param Model, FundsDto
	   * @return addPayee Template.
	   * */
	@RequestMapping(value = "/addPayee", method = RequestMethod.POST)
	public String savePayee(Model model, @ModelAttribute FundTransferDto fundsDto) {
		boolean isSaved = fundsService.savePayee(fundsDto);
		if (isSaved) {
			model.addAttribute("infoMsg", "saved payee successfully!");
			return "addPayee";
		}
		model.addAttribute("infoMsg", "Error saving payee!");
		return "addPayee";
	}
	
	
	/** 
	   * This method is used to add details of the Payee liked to bank user. 
	   * A GET method called upon loading of accountsSummary html page
	   * @param Model, FundsDto
	   * @return accountSummary template.
	   * */
	@RequestMapping(value = "/accountSummary", method = RequestMethod.GET)
	public String getAccountsSummary(Model model) {
		return "accountSummary";
	}
}
