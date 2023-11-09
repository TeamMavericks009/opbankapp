package com.opbank.app.entity;

import java.sql.Timestamp;
import java.util.Date;

import org.springframework.data.annotation.Immutable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name= "v_bank_transactions")
@Immutable
public class BankTransactions {
	@Id
	@Column(name = "transaction_id", updatable = false, nullable = false)
	private Long id;

	@Column(name = "user_id")
	private long userId;

	@Column(name = "primary_name")
	private String primaryName;

	@Column(name = "transaction_no")
	private String transactionNo;

	@Column(name = "participant_name")
	private String payeeFullName;

	@Column(name = "category")
	private String category;

	@Column(name = "transaction_type")
	private String transactionType;

	@Column(name = "transaction_amount_2")
	private String transactionAmount;

	@Column(name = "transaction_amount")
	private String transactionAmountNoSym;

	@Column(name = "balance")
	private String balance;

	@Column(name = "transacton_date_with_ts")
	private Timestamp transactionDateWithTS;

	@Column(name = "transaction_date_wo")
	private Date transactionDate;

	@Column(name = "status")
	private String status;

	@Column(name = "description")
	private String description;

	@Column(name = "account_no")
	private String accountNo;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPrimaryName() {
		return primaryName;
	}

	public void setPrimaryName(String primaryName) {
		this.primaryName = primaryName;
	}

	public String getPayeeFullName() {
		return payeeFullName;
	}

	public void setPayeeFullName(String payeeFullName) {
		this.payeeFullName = payeeFullName;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTransactionType() {
		return transactionType;
	}

	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}

	public String getTransactionAmount() {
		return transactionAmount;
	}

	public void setTransactionAmount(String transactionAmount) {
		this.transactionAmount = transactionAmount;
	}

	public String getTransactionAmountNoSym() {
		return transactionAmountNoSym;
	}

	public void setTransactionAmountNoSym(String transactionAmountNoSym) {
		this.transactionAmountNoSym = transactionAmountNoSym;
	}

	public String getBalance() {
		return balance;
	}

	public void setBalance(String balance) {
		this.balance = balance;
	}

	public Date getTransactionDate() {
		return transactionDate;
	}

	public void setTransactionDate(Date transactionDate) {
		this.transactionDate = transactionDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getTransactionNo() {
		return transactionNo;
	}

	public void setTransactionNo(String transactionNo) {
		this.transactionNo = transactionNo;
	}

	public Timestamp getTransactionDateWithTS() {
		return transactionDateWithTS;
	}

	public void setTransactionDateWithTS(Timestamp transactionDateWithTS) {
		this.transactionDateWithTS = transactionDateWithTS;
	}
}
