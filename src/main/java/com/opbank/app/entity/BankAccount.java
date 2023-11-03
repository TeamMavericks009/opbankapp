package com.opbank.app.entity;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "bank_account")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BankAccount {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(name = "bsb")
	private String bsb;
	
	@Column(name = "security_pin")
	private String securityPin;
	
	@Column(name = "account_no")
	private String accountNo;
	
	@Column(name = "account_type")
	private String accountType;

	@Column(name = "user_id")
	private long userId;
	
	@Column(name = "currency_type")
	private String currencyType;
	
	@Column(name = "balance")
	private Float balance;
	
	@Column(name = "interest_rate")
	private Float interestRate;
	
	@Column(name = "minimum_balance")
	private Float minimumBalance;
	
	@Column(name = "is_joint_account")
	private Boolean isJointAccount;
	
	@Column(name = "tfn")
	private String tfn;
	
	@Column(name = "status")
	private String status;
	
	@Column(name = "last_active_on")
	private LocalDateTime lastActiveOn;
	
	@Column(name = "inserted_by")
	private String insertedBy;
	
	@Column(name = "inserted_date")
	private LocalDateTime insertedDate;	
	
	@Column(name = "updated_by")
	private String updatedBy;
	
	@Column(name = "updated_date")
	private LocalDateTime updatedDate;	
}	
