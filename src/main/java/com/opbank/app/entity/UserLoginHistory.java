package com.opbank.app.entity;

import java.net.InetAddress;
import java.security.Timestamp;
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
@Table(name = "user_login_history")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserLoginHistory {


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(name = "user_login_id")
	private long userLoginId;
	
	@Column(name = "user_id")
	private String userId;
	
	@Column(name = "encrypted_password")
	private String encryptedPassword;
	
	@Column(name = "encryption")
	private String encryption;

	@Column(name = "pswd_last_modified_on")
	private Timestamp pswdLastModifiedOn;
	
	@Column(name = "ip_address")
	private InetAddress ipAddress;	
	
	@Column(name = "user_name")
	private String userName;
	
	@Column(name = "inserted_by")
	private String insertedBy;
	
	@Column(name = "inserted_date")
	private LocalDateTime insertedDate;	

}	
