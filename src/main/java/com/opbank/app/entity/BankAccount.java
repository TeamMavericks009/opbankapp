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
	@Column(name = "bank_account_id", updatable = false, nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(name = "bsb")
	private String bsb;
	
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

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getBsb() {
		return bsb;
	}

	public void setBsb(String bsb) {
		this.bsb = bsb;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getCurrencyType() {
		return currencyType;
	}

	public void setCurrencyType(String currencyType) {
		this.currencyType = currencyType;
	}

	public Float getBalance() {
		return balance;
	}

	public void setBalance(Float balance) {
		this.balance = balance;
	}

	public Float getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(Float interestRate) {
		this.interestRate = interestRate;
	}

	public Float getMinimumBalance() {
		return minimumBalance;
	}

	public void setMinimumBalance(Float minimumBalance) {
		this.minimumBalance = minimumBalance;
	}

	public Boolean getIsJointAccount() {
		return isJointAccount;
	}

	public void setIsJointAccount(Boolean isJointAccount) {
		this.isJointAccount = isJointAccount;
	}

	public String getTfn() {
		return tfn;
	}

	public void setTfn(String tfn) {
		this.tfn = tfn;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public LocalDateTime getLastActiveOn() {
		return lastActiveOn;
	}

	public void setLastActiveOn(LocalDateTime lastActiveOn) {
		this.lastActiveOn = lastActiveOn;
	}

	public String getInsertedBy() {
		return insertedBy;
	}

	public void setInsertedBy(String insertedBy) {
		this.insertedBy = insertedBy;
	}

	public LocalDateTime getInsertedDate() {
		return insertedDate;
	}

	public void setInsertedDate(LocalDateTime insertedDate) {
		this.insertedDate = insertedDate;
	}

	public String getUpdatedBy() {
		return updatedBy;
	}

	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}

	public LocalDateTime getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(LocalDateTime updatedDate) {
		this.updatedDate = updatedDate;
	}	
	
	
	
}	
