package com.opbank.app.model;

import jakarta.annotation.Generated;
import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Table(name = "address")
public class Address {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	@Column(name = "perm_adr_unit_level_no")
	private int permAddrUnit;
	
	@Column(name = "perm_adr_street_no")
	private int permAddrStreetNo;
	
	
	public Address() {
	}

	public Address(long id, int permAddrUnit, int permAddrStreetNo) {
		super();
		this.id = id;
		this.permAddrUnit = permAddrUnit;
		this.permAddrStreetNo = permAddrStreetNo;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getPermAddrUnit() {
		return permAddrUnit;
	}

	public void setPermAddrUnit(int permAddrUnit) {
		this.permAddrUnit = permAddrUnit;
	}

	public int getPermAddrStreetNo() {
		return permAddrStreetNo;
	}

	public void setPermAddrStreetNo(int permAddrStreetNo) {
		this.permAddrStreetNo = permAddrStreetNo;
	}

	@Override
	public String toString() {
		return "Address [id=" + id + ", permAddrUnit=" + permAddrUnit + ", permAddrStreetNo=" + permAddrStreetNo + "]";
	}
	

}	
