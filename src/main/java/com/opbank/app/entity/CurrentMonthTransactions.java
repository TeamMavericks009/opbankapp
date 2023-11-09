package com.opbank.app.entity;

import org.springframework.data.annotation.Immutable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "v_current_month_transaction_summary")
@Immutable
public class CurrentMonthTransactions {
	
	@Id
	@Column(name = "user_id", updatable = false, nullable = false)
	private Long id;

	@Column(name = "user_name")
	private String userName;

	@Column(name = "primary_name")
	private String primaryName;
	
	@Column(name = "credit_transaction_amount")
	private float inflow;
	
	@Column(name = "debit_transaction_amount")
	private float outflow;
	
	@Column(name = "final_balance")
	private float totalBalance;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPrimaryName() {
		return primaryName;
	}

	public void setPrimaryName(String primaryName) {
		this.primaryName = primaryName;
	}

	public float getInflow() {
		return inflow;
	}

	public void setInflow(float inflow) {
		this.inflow = inflow;
	}

	public float getOutflow() {
		return outflow;
	}

	public void setOutflow(float outflow) {
		this.outflow = outflow;
	}

	public float getTotalBalance() {
		return totalBalance;
	}

	public void setTotalBalance(float totalBalance) {
		this.totalBalance = totalBalance;
	}

}
