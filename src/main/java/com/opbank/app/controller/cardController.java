package com.opbank.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
* <h1>Cards Controller</h1>
* This controller fetches information related to linked cards, with the account user
* Handles POST and GET methods
* response will be given Model Attribute
* <p>
* 
*
* @author  Preethi Sreeramula
* @version 4.0
* @since   2023-10-29
*/

@Controller
public class cardController {

/** 
   * This method is used to fetch details of the cards liked to the user. 
   * A GET method, that posses Model attribute
   * @param Model
   * @return HTML cards Template.
   * */
	@RequestMapping(value = "/cards", method = RequestMethod.GET)
	public String getAccountsSummary(Model model) {
		System.out.println("inside bank cards page");
		return "cards";
	}
}
