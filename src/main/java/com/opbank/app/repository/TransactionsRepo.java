package com.opbank.app.repository;

import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.opbank.app.entity.Transaction;

@Repository
public interface TransactionsRepo extends JpaRepository<Transaction, Long> {

	 List<Transaction> findByUserId(long userId);
	 
	 List<Transaction> findByUserIdAndStatus(long userId, String status);
	 
	 @Query("SELECT MAX(t.transactionNo) FROM Transaction t WHERE t.userId = :userId")
	 long findMaxTransactionNoByUserId(@Param("userId") long userId);

}
