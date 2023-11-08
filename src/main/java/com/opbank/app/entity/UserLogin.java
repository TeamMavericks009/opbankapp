package com.opbank.app.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "user_login")
@Data
public class UserLogin {

	@Id
	@Column(name = "user_login_id", updatable = false, nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(name = "user_name")
	private String userName;

	@Column(name = "security_pin")
	private int securityPin;

	@Column(name = "encrypted_password")
	private String encryptedPassword;

	@Column(name = "pswd_last_modified_on")
	private LocalDateTime pswdLastModifiedOn;

	/*
	 * @Column(name = "ip_address") private InetAddress ipAddress;
	 */

	@Column(name = "inserted_by")
	private String insertedBy;

	@Column(name = "inserted_date")
	private LocalDateTime insertedDate;

	@Column(name = "updated_by")
	private String updatedBy;

	@Column(name = "updated_date")
	private LocalDateTime updatedDate;

	public UserLogin() {
	}

	public UserLogin(String userName, String encryptedPassword) {
		this.userName = userName;
		this.encryptedPassword = encryptedPassword;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getSecurityPin() {
		return securityPin;
	}

	public void setSecurityPin(int securityPin) {
		this.securityPin = securityPin;
	}

	public String getEncryptedPassword() {
		return encryptedPassword;
	}

	public void setEncryptedPassword(String encryptedPassword) {
		this.encryptedPassword = encryptedPassword;
	}

	/*
	 * public InetAddress getIpAddress() { return ipAddress; }
	 * 
	 * public void setIpAddress(InetAddress ipAddress) { this.ipAddress = ipAddress;
	 * }
	 */
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getInsertedBy() {
		return insertedBy;
	}

	public void setInsertedBy(String insertedBy) {
		this.insertedBy = insertedBy;
	}

	public String getUpdatedBy() {
		return updatedBy;
	}

	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}

}
