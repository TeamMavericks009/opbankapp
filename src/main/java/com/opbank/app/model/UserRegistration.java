package com.opbank.app.model;

import java.math.BigDecimal;
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
@Table(name = "user_registration")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserRegistration {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(name = "user_id")
	private long userId;
	
	@Column(name = "temp_request_id")
	private BigDecimal tempRequestId;
	
	@Column(name = "account_reset_flag")
	private boolean accountResetFlag;
	
	@Column(name = "bank_account_id")
	private long bankAccountId;

	@Column(name = "temp_password")
	private String tempPassword;
	
	@Column(name = "password")
	private String password;	
	
	@Column(name = "inserted_by")
	private String insertedBy;
	
	@Column(name = "inserted_date")
	private LocalDateTime insertedDate;	
	
	@Column(name = "updated_by")
	private String updatedBy;
	
	@Column(name = "updated_date")
	private LocalDateTime updatedDate;	

}	
