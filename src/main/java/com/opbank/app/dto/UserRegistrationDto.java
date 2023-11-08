package com.opbank.app.dto;

public class UserRegistrationDto {
	private String userName;
	private String tempPassword;
	private String newPassword;
	private String securePin;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getTempPassword() {
		return tempPassword;
	}

	public void setTempPassword(String tempPassword) {
		this.tempPassword = tempPassword;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public String getSecurePin() {
		return securePin;
	}

	public void setSecurePin(String securePin) {
		this.securePin = securePin;
	}
}
