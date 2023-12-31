package com.opbank.app.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.opbank.app.dto.BankInfoDto;
import com.opbank.app.entity.BankAccount;
import com.opbank.app.entity.CurrentMonthTransactions;
import com.opbank.app.entity.Users;
import com.opbank.app.repository.BankRepo;
import com.opbank.app.repository.CurrentMonthTransactionRepo;
import com.opbank.app.repository.UsersRepo;

@Service
public class BankServiceImpl implements BankService {

	@Autowired
	private BankRepo bankRepo;

	@Autowired
	private UsersRepo usersRepo;

	@Autowired
	private CurrentMonthTransactionRepo statsRepo;

	public BankInfoDto getBankAccountInfo(long bankId) {
		BankAccount bankaccount = bankRepo.findByUserId(bankId);
		Optional<Users> users = usersRepo.findById(bankaccount.getUserId());
		BankInfoDto bankInfoDto = new BankInfoDto();

		if (bankaccount != null) {
			bankInfoDto.setAccountNo(bankaccount.getAccountNo());
			bankInfoDto.setTotalBalance(String.valueOf(bankaccount.getBalance()));
			bankInfoDto.setAccountType(bankaccount.getAccountType());
			bankInfoDto.setBsb(bankaccount.getBsb());
			if (users.isPresent()) {
				bankInfoDto.setFullName(users.get().getFirstName() + " " + users.get().getLastName());
			}
		}
		CurrentMonthTransactions currentMonthTransactions = getCurrentMonthStats(bankId);
		bankInfoDto.setInFlow(String.valueOf(currentMonthTransactions.getInflow()));
		bankInfoDto.setOutFlow(String.valueOf(currentMonthTransactions.getOutflow()));
		System.out.println(bankInfoDto.getOutFlow() + " ****Bank DTO" + bankInfoDto.getInFlow());
		return bankInfoDto;
	}

	private CurrentMonthTransactions getCurrentMonthStats(long bankId) {
		CurrentMonthTransactions currentMonthTransactions = statsRepo.findById(1);
		System.out.println(currentMonthTransactions.getInflow() + " ******" + 
				currentMonthTransactions.getOutflow());
		return currentMonthTransactions;
	}
}
