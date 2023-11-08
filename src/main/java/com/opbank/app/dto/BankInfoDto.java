package com.opbank.app.dto;

import org.springframework.stereotype.Component;

@Component
public class BankInfoDto {
	private String accountNo;
	private String fullName;
	private String accountType;
	private String totalBalance;
	private String bsb;
	private String inFlow;
	private String outFlow;

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public String getTotalBalance() {
		return totalBalance;
	}

	public void setTotalBalance(String totalBalance) {
		this.totalBalance = totalBalance;
	}

	public String getBsb() {
		return bsb;
	}

	public void setBsb(String bsb) {
		this.bsb = bsb;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getInFlow() {
		return inFlow;
	}

	public void setInFlow(String inFlow) {
		this.inFlow = inFlow;
	}

	public String getOutFlow() {
		return outFlow;
	}

	public void setOutFlow(String outFlow) {
		this.outFlow = outFlow;
	}	
}
