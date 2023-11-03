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
@Table(name = "error_log")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ErrorLog {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(name = "error_type")
	private String errorType;
	
	@Column(name = "error_name")
	private String errorName;
	
	@Column(name = "error_description")
	private String errorDescription;
	
	@Column(name = "error_code")
	private String errorCode;
	
	@Column(name = "inserted_by")
	private String insertedBy;
	
	@Column(name = "inserted_date")
	private LocalDateTime insertedDate;	
	
	@Column(name = "updated_by")
	private String updatedBy;
	
	@Column(name = "updated_date")
	private LocalDateTime updatedDate;	

}	
