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
@Table(name = "bank")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Bank {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(name = "bank_name")
	private String bankName;

	@Column(name = "address")
	private String address;

	@Column(name = "branch_name")
	private String branch_name;

	@Column(name = "branch_code")
	private String branchCode;

	@Column(name = "branch_manager")
	private String branchManager;

	@Column(name = "inserted_by")
	private String insertedBy;

	@Column(name = "inserted_date")
	private LocalDateTime insertedDate;

	@Column(name = "updated_by")
	private String updatedBy;

	@Column(name = "updated_date")
	private LocalDateTime updatedDate;

}
