package com.opbank.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.opbank.app.entity.CurrentMonthTransactions;

public interface CurrentMonthTransactionRepo extends JpaRepository<CurrentMonthTransactions, Long> {
	
	CurrentMonthTransactions findById(long id);
}
