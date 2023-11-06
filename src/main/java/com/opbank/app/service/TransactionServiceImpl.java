package com.opbank.app.service;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.opbank.app.dto.TransactionDto;
import com.opbank.app.entity.BankTransactions;
import com.opbank.app.entity.Transaction;
import com.opbank.app.repository.BankTransactionsRepository;
import com.opbank.app.repository.TransactionsRepo;

@Service
public class TransactionServiceImpl implements TransactionService{

	@Autowired
	private TransactionsRepo transactionRepo;
	
	@Autowired
	private BankTransactionsRepository bankTransactionsRepo;
	
	@Override
	public List<TransactionDto> getAllUserTransactions(long user_id) {

		List<TransactionDto> transactionSetObj = new ArrayList<>();
		List<Transaction> dataTrasactions= transactionRepo.findByUserId(user_id);
		
		List<Transaction> testTrasactions= transactionRepo.findByUserIdAndStatus(user_id,"Success");
		System.out.println(testTrasactions.size() + " **********size of success transactions");
		
		
		List<BankTransactions> viewTransaction = bankTransactionsRepo.findByUserId(1);
		System.out.println(viewTransaction.size() + " **********VIEW************");
		
		
		try {
			List<BankTransactions> periodTransactions = bankTransactionsRepo.findByUserIdAndTransactionDateBetween(1, converToDate("2023-10-18") ,
					converToDate("2023-10-19"));
			System.out.println(periodTransactions.size() + " **********Date Transaction_FROM VIEW************");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		if(dataTrasactions != null) {
			for(Transaction obj: dataTrasactions) {
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
	
	  public Date converToDate(String dt) throws ParseException { Date date1=new
	  SimpleDateFormat("dd/MM/yyyy").parse(dt); System.out.println(dt + "/ " +
	  date1); return date1; 
	  
	  }
}