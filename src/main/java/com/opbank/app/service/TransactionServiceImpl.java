package com.opbank.app.service;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.opbank.app.dto.FundTransferDto;
import com.opbank.app.dto.TransactionDto;
import com.opbank.app.entity.BankAccount;
import com.opbank.app.entity.BankTransactions;
import com.opbank.app.entity.LinkedPayee;
import com.opbank.app.entity.Transaction;
import com.opbank.app.entity.UserLogin;
import com.opbank.app.repository.BankRepo;
import com.opbank.app.repository.BankTransactionsRepository;
import com.opbank.app.repository.PayeeRepository;
import com.opbank.app.repository.TransactionsRepo;
import com.opbank.app.repository.UserRepository;

@Service
public class TransactionServiceImpl implements TransactionService {

	@Autowired
	private TransactionsRepo transactionRepo;

	@Autowired
	private BankTransactionsRepository bankTransactionsRepo;

	@Autowired
	private BankRepo bankRepo;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private PayeeRepository payeeRepo;

	@Override
	public List<TransactionDto> getAllUserTransactions(long user_id) {

		List<TransactionDto> transactionSetObj = new ArrayList<>();
		List<Transaction> dataTrasactions = transactionRepo.findByUserId(user_id);

		List<Transaction> testTrasactions = transactionRepo.findByUserIdAndStatus(user_id, "Success");

		List<BankTransactions> viewTransaction = bankTransactionsRepo.findByUserId(1);

		try {
			List<BankTransactions> periodTransactions = bankTransactionsRepo.findByUserIdAndTransactionDateBetween(1,
					converToDate("2023-10-18"), converToDate("2023-10-19"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (dataTrasactions != null) {
			for (Transaction obj : dataTrasactions) {
				TransactionDto transaction = new TransactionDto();
				transaction.setDate(getFormattedDate(obj.getTransaction_date()));
				transaction.setTransactionNo(String.valueOf(obj.getTransactionNo()));
				transaction.setAmount(obj.getTransactionAmount().toString());
				transaction.setDescription(obj.getDescription());
				transaction.setBalance(obj.getBalance().toString());
				transactionSetObj.add(transaction);
			}
		}
		return transactionSetObj;
	}

	public String getFormattedDate(Timestamp timestamp) {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
		LocalDateTime localDateTime = timestamp.toLocalDateTime();
		return localDateTime.format(formatter);
	}

	public Date converToDate(String dt) throws ParseException {
		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(dt);
		System.out.println(dt + " / " + date);
		return date;
	}

	@Override
	public boolean fundTransfer(FundTransferDto fundsDto) {
		long userId = fetchUserFromLogin(fundsDto.getUserName());
		float amountToTransfer = Float.parseFloat(fundsDto.getAmountToTransfer());
		float actualBalance = 0;

		if (userId > 0) {
			Optional<BankAccount> acct = bankRepo.findById(userId);
			actualBalance = acct.get().getBalance() - amountToTransfer;
			acct.get().setBalance(actualBalance);
			bankRepo.save(acct.get());
			if (saveTransaction(userId, fundsDto, acct.get().getId(), actualBalance))
				return true;
		}
		return false;
	}

	private boolean saveTransaction(long userId, FundTransferDto fundsDto, long userBankId, float actualBalance) {

		long maxTransactionNum = transactionRepo.findMaxTransactionNoByUserId(userId);
		LinkedPayee payee = payeeRepo.findByPayeeName("Isha Reddy");
		Transaction obj = new Transaction();
		obj.setUserId(userId);
		obj.setTransactionNo(maxTransactionNum + 1);
		obj.setTransactionAmount(new BigDecimal(fundsDto.getAmountToTransfer()));
		obj.setBankAccountId(userBankId);
		obj.setParticipantAccountId(payee.getId());
		obj.setTransactionCategoryId(3);
		obj.setTransactionTypeId(2);
		obj.setBalance(new BigDecimal(actualBalance));
		obj.setTransaction_date(Timestamp.valueOf(LocalDateTime.now()));
		obj.setStatus("Success");
		Transaction transactionObj = transactionRepo.save(obj);
		if (transactionObj != null)
			return true;
		return false;
	}

	private long fetchUserFromLogin(String userName) {
		System.out.println("Charlie3");
		UserLogin userLogin = userRepository.findByUserNameIgnoreCase("Charlie3");
		return userLogin.getId();
	}
}