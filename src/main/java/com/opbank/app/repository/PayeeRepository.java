package com.opbank.app.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.opbank.app.entity.BankTransactions;
import com.opbank.app.entity.LinkedPayee;

@Repository
public interface PayeeRepository extends JpaRepository<LinkedPayee, Long> {
	
	LinkedPayee findByPayeeName(String payeeName);
	
	List<LinkedPayee> findByPayeeAccountId(long userId);
	
	LinkedPayee save(LinkedPayee newPayee);

}
