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

/**
* <h1>Payee Controller</h1>
* This controller is called upon launching loads for Fund transfer
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
public class PayeeController {
	
	@Autowired
	FundTransferService fundsService;

	
	/** 
	   * This method is to display payeeLists after clicking view payees button
	   *  A GET method,
	   * @param Model,
	   * @return Test_payees template, Model attributes payee list
	   * */
	@RequestMapping(value = "/getAllPayees", method = RequestMethod.GET)
	public String getAllPayees(Model model) {
		List<FundTransferDto> payeesList = fundsService.getAllPayees(1);
		if (payeesList != null) {
			model.addAttribute("payeesList", payeesList);
			return "viewPayees";
		}
		return "viewPayees";
	}
	
	/** 
	   * This method is to display payeeLists upon loading funds transfer
	   *  A GET method,
	   * @param Model,
	   * @return Funds transfer template, Model attributes payee list
	   * */
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
