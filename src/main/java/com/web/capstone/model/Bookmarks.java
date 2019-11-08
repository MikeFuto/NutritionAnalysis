package com.web.capstone.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



public class Bookmarks {

	
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
		
			//package info
		private String upcCode;			//this may be the only one field needed but it needs to be an array
		private String productMfg;
		private String productName;
		private double productDescription;
		private double packageSize;
		private double packageCost;
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
		
		
		
	}	
	
	
}
