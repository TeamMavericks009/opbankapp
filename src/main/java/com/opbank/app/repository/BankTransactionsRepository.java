package com.opbank.app.repository;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.opbank.app.entity.BankTransactions;


@Repository
public interface BankTransactionsRepository extends JpaRepository<BankTransactions, Long> {

	List<BankTransactions> findByUserId(long userId);
	
	List<BankTransactions> findByUserIdAndTransactionDateBetween(long userId, Date fromDate, Date toDate);
}

