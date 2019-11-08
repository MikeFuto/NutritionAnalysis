package com.web.capstone.model;

import java.sql.Date;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="addressbook")
public class Addressess {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	private long id;
	private String address;
	private String city;
	private String state;
	private String zip;
	private String email;
	
	@Column(name="created_on")
	private Date createOn;
	
	@Transient
	MultipartFile file;
	
	private long user_id;;
	
	private String filename;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getCreateOn() {
		return createOn;
	}

	public void setCreateOn(Date createOn) {
		this.createOn = createOn;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public long getUser_id() {
		return user_id;
	}

	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	
	
}
