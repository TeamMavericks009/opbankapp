package com.opbank.app.service;

import java.util.List;
import java.util.Set;

import org.springframework.stereotype.Service;

import com.opbank.app.dto.TransactionDto;

public interface TransactionService {

	public List<TransactionDto> getAllUserTransactions(long user_id);
	
}
