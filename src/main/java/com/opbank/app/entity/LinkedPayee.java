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
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(name = "sender_bank_account_id")
	private long senderBankAccount_id;
	
	@Column(name = "nick_name_of_payee")
	private String nickNameOfPayee;
	
	@Column(name = "account_no")
	private String accountNo;
	
	@Column(name = "bsb")
	private String bsb;

	@Column(name = "full_name_of_payee")
	private String fullNameOfPayee;
	
	@Column(name = "bank_name")
	private String bankName;
	
	@Column(name = "inserted_by")
	private String insertedBy;
	
	@Column(name = "inserted_date")
	private LocalDateTime insertedDate;	
	
	@Column(name = "updated_by")
	private String updatedBy;
	
	@Column(name = "updated_date")
	private LocalDateTime updatedDate;	
}	
