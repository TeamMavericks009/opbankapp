package com.opbank.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.opbank.app.dao.BankRepo;
import com.opbank.app.dto.BankInfoDto;
import com.opbank.app.dto.UserInfoDto;
import com.opbank.app.entity.BankAccount;

@Service
public class BankServiceImpl implements BankService  {

	@Autowired
	private BankRepo bankRepo;
	
	public BankInfoDto getBankAccountInfo(long bankId) {
		BankAccount bankaccount = bankRepo.findByUserId(bankId);
		BankInfoDto bankInfoDto = new BankInfoDto();
		
		if(bankaccount != null) {
			bankInfoDto.setAccountNo(bankaccount.getAccountNo());
			bankInfoDto.setTotalBalance(String.valueOf(bankaccount.getBalance()));
			bankInfoDto.setAccountType(bankaccount.getAccountType());
			bankInfoDto.setBsb(bankaccount.getBsb());
		}
		return bankInfoDto;
	}
}
