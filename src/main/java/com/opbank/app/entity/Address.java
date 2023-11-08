package com.opbank.app.entity;

import java.math.BigDecimal;
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
@Table(name = "address")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Address {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(name = "perm_addr_unit_level_no")
	private BigDecimal permAddrUnitLevelNo;

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
	private BigDecimal mailAddrUnitLevelNo;

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
	private LocalDateTime insertedDate;

	@Column(name = "updated_by")
	private String updatedBy;

	@Column(name = "updated_date")
	private LocalDateTime updatedDate;
}
