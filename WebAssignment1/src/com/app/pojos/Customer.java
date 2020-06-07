package com.app.pojos;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name = "Customer")
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "customer_seq")
	@GenericGenerator(name = "customer_seq", strategy = "com.app.pojos.StringPrefixedSequenceIdGenerator", parameters = {
			@Parameter(name = StringPrefixedSequenceIdGenerator.INCREMENT_PARAM, value = "50"),
			@Parameter(name = StringPrefixedSequenceIdGenerator.VALUE_PREFIX_PARAMETER, value = "B_"),
			@Parameter(name = StringPrefixedSequenceIdGenerator.NUMBER_FORMAT_PARAMETER, value = "%05d") })

	private String id;
	private String fullName;
	private String mobile;
	private String email;
	private String type;
	private String countTickets;
	@Column(name = "reg_date")

	private LocalDate generatedDate;

	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Customer(String id, String fullName, String mobile, String email, String type, String countTickets,
			LocalDate generatedDate) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.mobile = mobile;
		this.email = email;
		this.type = type;
		this.countTickets = countTickets;
		this.generatedDate = generatedDate;
	}

//
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCountTickets() {
		return countTickets;
	}

	public void setCountTickets(String countTickets) {
		this.countTickets = countTickets;
	}

//	@Column(name = "reg_date")
	public LocalDate getgeneratedDate() {
		return generatedDate;
	}

	public void setgeneratedDate(LocalDate generatedDate) {
		this.generatedDate = generatedDate;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", fullName=" + fullName + ", mobile=" + mobile + ", email=" + email + ", type="
				+ type + ", countTickets=" + countTickets + ", generatedDate=" + generatedDate + "]";
	}

}
