package com.opbank.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.opbank.app.dto.BankInfoDto;
import com.opbank.app.entity.BankAccount;

@Repository
public interface BankRepo extends JpaRepository<BankAccount, Long> {

	BankAccount findByUserId(long bankId);

}
