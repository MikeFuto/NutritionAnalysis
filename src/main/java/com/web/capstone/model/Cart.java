package com.web.capstone.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cart")
public class Cart {

	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id")
	private long id;
	
	private long ingredientId;
	
		//cart info
	@Column(name="cName")
	private String cartName;		//this is for when the cart is saved for access in the history listing
	private String date;
	private String cartDescription;
	private String cartBudget;
	private String cartUserId;
	
		//package info
	private String upcCode;			//this may be the only one field needed but it needs to be an array
	private String productMfg;
	private String productName;
	private double productDescription;
	private double packageSize;
	private double packageCost;
	
	
		//quantity adjustments
	private int quantOrdered;	//this is for multiples to scale up
	private String normFactor;		//this is for leftovers to be excluded on bulk purchases

	private double subTotalCost;		//this is for display purposes only
	
								//these would be static variables in the class I think
		//quantity totals			//these are calculated each time some thing new is added or when page is displayed
	private double costSumDollar;	//this is most important to guide the user to their target
	private double sizeSumOz;			//this is useless
	private double servSumCount;		//this is ok but perhaps sum of days is better
	private double daySumCount;		//this is most important to guide the user to their target
	
	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getIngredientId() {
		return ingredientId;
	}
	public void setIngredientId(long ingredientId) {
		this.ingredientId = ingredientId;
	}
	public String getCartName() {
		return cartName;
	}
	public void setCartName(String cartName) {
		this.cartName = cartName;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getUpcCode() {
		return upcCode;
	}
	public void setUpcCode(String upcCode) {
		this.upcCode = upcCode;
	}
	public String getProductMfg() {
		return productMfg;
	}
	public void setProductMfg(String productMfg) {
		this.productMfg = productMfg;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public double getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(double productDescription) {
		this.productDescription = productDescription;
	}
	public double getPackageSize() {
		return packageSize;
	}
	public void setPackageSize(double packageSize) {
		this.packageSize = packageSize;
	}
	public double getPackageCost() {
		return packageCost;
	}
	public void setPackageCost(double packageCost) {
		this.packageCost = packageCost;
	}
	
	public int getQuantOrdered() {
		return quantOrdered;
	}
	public void setQuantOrdered(int quantOrdered) {
		this.quantOrdered = quantOrdered;
	}
	public String getNormFactor() {
		return normFactor;
	}
	public void setNormFactor(String normFactor) {
		this.normFactor = normFactor;
	}
	public double getCostSumDollar() {
		return costSumDollar;
	}
	public void setCostSumDollar(double costSumDollar) {
		this.costSumDollar = costSumDollar;
	}
	public double getSizeSumOz() {
		return sizeSumOz;
	}
	public void setSizeSumOz(double sizeSumOz) {
		this.sizeSumOz = sizeSumOz;
	}
	public double getServSumCount() {
		return servSumCount;
	}
	public void setServSumCount(double servSumCount) {
		this.servSumCount = servSumCount;
	}
	public double getDaySumCount() {
		return daySumCount;
	}
	public void setDaySumCount(double daySumCount) {
		this.daySumCount = daySumCount;
	}
	
	
	
	
	
	public String getCartDescription() {
		return cartDescription;
	}
	public void setCartDescription(String cartDescription) {
		this.cartDescription = cartDescription;
	}
	public String getCartBudget() {
		return cartBudget;
	}
	public void setCartBudget(String cartBudget) {
		this.cartBudget = cartBudget;
	}
	public String getCartUserId() {
		return cartUserId;
	}
	public void setCartUserId(String cartUserId) {
		this.cartUserId = cartUserId;
	}
	public double getSubTotalCost() {
		return subTotalCost;
	}
	
	
	public void setSubTotalCost(double subTotalCost) {
		this.subTotalCost = subTotalCost;
	}


	

	
}
