package com.opbank.app.entity;

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
@Table(name = "linked_payee")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class LinkedPayee {

	@Id
	@Column(name = "linked_payee_id", updatable = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(name = "sender_bank_account_id")
	private long payeeAccountId;

	@Column(name = "nick_name_of_payee")
	private String nickNameOfPayee;

	@Column(name = "account_no")
	private String accountNo;

	@Column(name = "bsb")
	private String bsb;

	@Column(name = "full_name_of_payee")
	private String payeeName;

	@Column(name = "bank_name")
	private String payeeBankName;

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

	public long getPayeeAccount_id() {
		return payeeAccountId;
	}

	public void setPayeeAccount_id(long payeeAccount_id) {
		this.payeeAccountId = payeeAccount_id;
	}

	public String getNickNameOfPayee() {
		return nickNameOfPayee;
	}

	public void setNickNameOfPayee(String nickNameOfPayee) {
		this.nickNameOfPayee = nickNameOfPayee;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getBsb() {
		return bsb;
	}

	public void setBsb(String bsb) {
		this.bsb = bsb;
	}

	public String getPayeeName() {
		return payeeName;
	}

	public void setPayeeName(String payeeName) {
		this.payeeName = payeeName;
	}

	public String getPayeeBankName() {
		return payeeBankName;
	}

	public void setPayeeBankName(String payeeBankName) {
		this.payeeBankName = payeeBankName;
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
