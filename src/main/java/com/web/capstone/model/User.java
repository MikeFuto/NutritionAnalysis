package com.web.capstone.model;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="users")
public class User {

		//personal info
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id")
	private long id;
	@Column(name="fname")
	private String fname;
	private String lname;
	private String phone;
	private String email;
	private String password;
	private Date created;
	
		//shipping info
	private String street;
	private String city;
	private String state;
	private String zip;
	
		//health stats
	private double age;
	private double height;
	private double activityLevel;
	
	private double weight;
	private double targetWeight;
	private Date targetDate;
	private double spread;
	
		//payment stats
	private int ppNum;
	private Date ExpDate;
	private int code;
	
	
	@Column(name="user_role")
	private String role;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}	
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (id ^ (id >>> 32));
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (id != other.id)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", fname=" + fname + ", lname=" + lname + ", phone=" + phone + ", email=" + email
				+ ", password=" + password + ", role=" + role + "]";
	}
	
	
	
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
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
	
	
	
	public double getAge() {
		return age;
	}
	public void setAge(double age) {
		this.age = age;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	public double getActivityLevel() {
		return activityLevel;
	}
	public void setActivityLevel(double activityLevel) {
		this.activityLevel = activityLevel;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public double getTargetWeight() {
		return targetWeight;
	}
	public void setTargetWeight(double targetWeight) {
		this.targetWeight = targetWeight;
	}
	public Date getTargetDate() {
		return targetDate;
	}
	public void setTargetDate(Date targetDate) {
		this.targetDate = targetDate;
	}
	public double getSpread() {
		return spread;
	}
	public void setSpread(double spread) {
		this.spread = spread;
	}
	
	
	public int getPpNum() {
		return ppNum;
	}
	public void setPpNum(int ppNum) {
		this.ppNum = ppNum;
	}
	public Date getExpDate() {
		return ExpDate;
	}
	public void setExpDate(Date expDate) {
		ExpDate = expDate;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	
	
	
	
	
	
}
