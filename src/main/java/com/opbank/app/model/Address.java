package com.opbank.app.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "address")
public class Address {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	@Column(name = "perm_addr_unit_level_no")
	private int permAddrUnitLevelNo;
	
	@Column(name = "perm_addr_street_no")
	private int permAddrStreetNo;
	
	@Column(name = "perm_addr_street_name")
	private String permAddrStreetName;
	
	@Column(name = "perm_addr_street_type")
	private String permAddrStreetType;

	@Column(name = "perm_addr_suburb")
	private String permAddrSuburb;
	
	@Column(name = "perm_addr_state")
	private String permAddrState;
	
	@Column(name = "perm_adr_zip")
	private String permAddrZip;
	
	@Column(name = "perm_adr_country")
	private String permAddrCountry;
	
	@Column(name = "mail_addr_unit_level_no")
	private int mailAddrUnitLevelNo;
	
	@Column(name = "mail_addr_street_no")
	private int mailAddrStreetNo;
	
	@Column(name = "mail_addr_street_name")
	private String mailAddrStreetName;
	
	@Column(name = "mail_addr_street_type")
	private String mailAddrStreetType;
	
	@Column(name = "mail_addr_suburb")
	private String mailAddrSuburb;
	
	@Column(name = "mail_addr_state")
	private String mailAddrState;
	
	@Column(name = "mail_adr_zip")
	private String mailAddrZip;
	
	@Column(name = "mail_adr_country")
	private String mailAddrCountry;
	
	@Column(name = "inserted_by")
	private String insertedBy;
	
	@Column(name = "inserted_date")
	private date insertedDate;	
	
	@Column(name = "updated_by")
	private String updatedBy;
	
	@Column(name = "updated_date")
	private date updatedDate;	
			
	public Address() {
	}

	public Address(long id, int permAddrUnitLevelNo, int permAddrStreetNo, String permAddrStreetName,
			String permAddrStreetType, String permAddrSuburb, String permAddrState, String permAddrZip,
			String permAddrCountry, int mailAddrUnitLevelNo, int mailAddrStreetNo, String mailAddrStreetName,
			String mailAddrStreetType, String mailAddrSuburb, String mailAddrState, String mailAddrZip,
			String mailAddrCountry, String insertedBy, date insertedDate, String updatedBy, date updatedDate) {
		super();
		this.id = id;
		this.permAddrUnitLevelNo = permAddrUnitLevelNo;
		this.permAddrStreetNo = permAddrStreetNo;
		this.permAddrStreetName = permAddrStreetName;
		this.permAddrStreetType = permAddrStreetType;
		this.permAddrSuburb = permAddrSuburb;
		this.permAddrState = permAddrState;
		this.permAddrZip = permAddrZip;
		this.permAddrCountry = permAddrCountry;
		this.mailAddrUnitLevelNo = mailAddrUnitLevelNo;
		this.mailAddrStreetNo = mailAddrStreetNo;
		this.mailAddrStreetName = mailAddrStreetName;
		this.mailAddrStreetType = mailAddrStreetType;
		this.mailAddrSuburb = mailAddrSuburb;
		this.mailAddrState = mailAddrState;
		this.mailAddrZip = mailAddrZip;
		this.mailAddrCountry = mailAddrCountry;
		this.insertedBy = insertedBy;
		this.insertedDate = insertedDate;
		this.updatedBy = updatedBy;
		this.updatedDate = updatedDate;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	public int getPermAddrUnitLevelNo() {
		return permAddrUnitLevelNo;
	}

	public void setPermAddrUnitLevelNo(int permAddrUnitLevelNo) {
		this.permAddrUnitLevelNo = permAddrUnitLevelNo;
	}

	public int getPermAddrStreetNo() {
		return permAddrStreetNo;
	}

	public void setPermAddrStreetNo(int permAddrStreetNo) {
		this.permAddrStreetNo = permAddrStreetNo;
	}

	public String getPermAddrStreetName() {
		return permAddrStreetName;
	}

	public void setPermAddrStreetName(String permAddrStreetName) {
		this.permAddrStreetName = permAddrStreetName;
	}

	public String getPermAddrStreetType() {
		return permAddrStreetType;
	}

	public void setPermAddrStreetType(String permAddrStreetType) {
		this.permAddrStreetType = permAddrStreetType;
	}

	public String getPermAddrSuburb() {
		return permAddrSuburb;
	}

	public void setPermAddrSuburb(String permAddrSuburb) {
		this.permAddrSuburb = permAddrSuburb;
	}

	public String getPermAddrState() {
		return permAddrState;
	}

	public void setPermAddrState(String permAddrState) {
		this.permAddrState = permAddrState;
	}

	public String getPermAddrZip() {
		return permAddrZip;
	}

	public void setPermAddrZip(String permAddrZip) {
		this.permAddrZip = permAddrZip;
	}

	public String getPermAddrCountry() {
		return permAddrCountry;
	}

	public void setPermAddrCountry(String permAddrCountry) {
		this.permAddrCountry = permAddrCountry;
	}

	public int getMailAddrUnitLevelNo() {
		return mailAddrUnitLevelNo;
	}

	public void setMailAddrUnitLevelNo(int mailAddrUnitLevelNo) {
		this.mailAddrUnitLevelNo = mailAddrUnitLevelNo;
	}

	public int getMailAddrStreetNo() {
		return mailAddrStreetNo;
	}

	public void setMailAddrStreetNo(int mailAddrStreetNo) {
		this.mailAddrStreetNo = mailAddrStreetNo;
	}

	public String getMailAddrStreetName() {
		return mailAddrStreetName;
	}

	public void setMailAddrStreetName(String mailAddrStreetName) {
		this.mailAddrStreetName = mailAddrStreetName;
	}

	public String getMailAddrStreetType() {
		return mailAddrStreetType;
	}

	public void setMailAddrStreetType(String mailAddrStreetType) {
		this.mailAddrStreetType = mailAddrStreetType;
	}

	public String getMailAddrSuburb() {
		return mailAddrSuburb;
	}

	public void setMailAddrSuburb(String mailAddrSuburb) {
		this.mailAddrSuburb = mailAddrSuburb;
	}

	public String getMailAddrState() {
		return mailAddrState;
	}

	public void setMailAddrState(String mailAddrState) {
		this.mailAddrState = mailAddrState;
	}

	public String getMailAddrZip() {
		return mailAddrZip;
	}

	public void setMailAddrZip(String mailAddrZip) {
		this.mailAddrZip = mailAddrZip;
	}

	public String getMailAddrCountry() {
		return mailAddrCountry;
	}

	public void setMailAddrCountry(String mailAddrCountry) {
		this.mailAddrCountry = mailAddrCountry;
	}

	@Override
	public String toString() {
		return "Address [id=" + id + ", permAddrUnitLevelNo=" + permAddrUnitLevelNo + ", permAddrStreetNo="
				+ permAddrStreetNo + ", permAddrStreetName=" + permAddrStreetName + ", permAddrStreetType="
				+ permAddrStreetType + ", permAddrSuburb=" + permAddrSuburb + ", permAddrState=" + permAddrState
				+ ", permAddrZip=" + permAddrZip + ", permAddrCountry=" + permAddrCountry + ", mailAddrUnitLevelNo="
				+ mailAddrUnitLevelNo + ", mailAddrStreetNo=" + mailAddrStreetNo + ", mailAddrStreetName="
				+ mailAddrStreetName + ", mailAddrStreetType=" + mailAddrStreetType + ", mailAddrSuburb="
				+ mailAddrSuburb + ", mailAddrState=" + mailAddrState + ", mailAddrZip=" + mailAddrZip
				+ ", mailAddrCountry=" + mailAddrCountry + ", insertedBy=" + insertedBy + ", updatedBy=" + updatedBy
				+ "]";
	}
	@Override

	

}	
