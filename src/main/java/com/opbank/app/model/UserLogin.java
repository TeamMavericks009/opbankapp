package com.opbank.app.model;

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
@Table(name = "user_login")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserLogin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(name = "login_id")
	private String loginId;
	
	@Column(name = "encrypted_password")
	private String encryptedPassword;
	
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
	
	@Column(name = "updated_by")
	private String updatedBy;
	
	@Column(name = "updated_date")
	private LocalDateTime updatedDate;	
}	
