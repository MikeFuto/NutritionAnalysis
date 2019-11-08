package com.web.capstone.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="ingredients")
public class Ingredients {

				
				//identification info
			@Id
			@GeneratedValue(strategy = GenerationType.AUTO)
			@Column(name="id")
			private long id;
			
				//package info
			private String productMfg;
			private String productName;
			private String description;
			private String picture;
			private String upcCode;
			private String category;
			private String category2;
			
				//stats by package
			private double sizeOz;
			
			private double calInPkg;
			private double sizeOfPkg;
			
			private double costOfPkg;
			
				//stats by serving
			private double servInPkg;
			private double costInServ;	
			private double calInServ;
			
			
			
			
				//nutrition info - carbs
			private double carbGramInServ;		
			private double carbFiGramInServ;
			private double carbSiGramInServ;
			
				//nutrition info - proteins
			private double protGramInServ;
			private double protEssGramInServ;
		
				//nutrition info - fats
			private double fatGramInServ;
			private double fatSatGramInServ;
			private double fatPolyGramInServ;
			private double fatMonoGramInServ;
			private double fatColestMgInServ;
			private double fatO3MgInServ;
			
				//nutrition info - other
			private double sodiumMgInServ;
			private double pottasiumMgInServ;
	
			
			//private String VitaminsInServ;
			//private String MineralsInServ;
			
				//nutrition info - allergies/danger
//			private double peanuts;
//			private double treeNuts;
//			private double msgFlavor;
//			private double shellFish;
//			private double mercury;
//			private double artSweet;
//			private double preserv;
//			private double fatTransGramInServ;
			
			
			
			
			public long getId() {
				return id;
			}
			public void setId(long id) {
				this.id = id;
			}
			public String getProductName() {
				return productName;
			}
			public void setProductName(String productName) {
				this.productName = productName;
			}
			public String getProductMfg() {
				return productMfg;
			}
			public void setProductMfg(String productMfg) {
				this.productMfg = productMfg;
			}
			public String getDescription() {
				return description;
			}
			public void setDescription(String description) {
				this.description = description;
			}
			public String getPicture() {
				return picture;
			}
			public void setPicture(String picture) {
				this.picture = picture;
			}
			public String getUpcCode() {
				return upcCode;
			}
			public void setUpcCode(String upcCode) {
				this.upcCode = upcCode;
			}
			public String getCategory() {
				return category;
			}
			public void setCategory(String category) {
				this.category = category;
			}
			public String getCategory2() {
				return category2;
			}
			public void setCategory2(String category2) {
				this.category2 = category2;
			}
			
		
		
		
			public double getCalInPkg() {
				return calInPkg;
			}
			public void setCalInPkg(double calInPkg) {
				this.calInPkg = calInPkg;
			}
			public double getSizeOfPkg() {
				return sizeOfPkg;
			}
			public void setSizeOfPkg(double sizeOfPkg) {
				this.sizeOfPkg = sizeOfPkg;
			}
			public double getCostOfPkg() {
				return costOfPkg;
			}
			public void setCostOfPkg(double costOfPkg) {
				this.costOfPkg = costOfPkg;
			}			
			public double getSizeOz() {
				return sizeOz;
			}
			public void setSizeOz(double sizeOz) {
				this.sizeOz = sizeOz;
			}
			
			
			
			
			public double getServInPkg() {
				return servInPkg;
			}
			public void setServInPkg(double servInPkg) {
				this.servInPkg = servInPkg;
			}
			public double getCostInServ() {
				return costInServ;
			}
			public void setCostInServ(double costInServ) {
				this.costInServ = costInServ;
			}
			public double getCalInServ() {
				return calInServ;
			}
			public void setCalInServ(double calInServ) {
				this.calInServ = calInServ;
			}
			
			
						
			
			
			public double getCarbGramInServ() {
				return carbGramInServ;
			}
			public void setCarbGramInServ(double carbGramInServ) {
				this.carbGramInServ = carbGramInServ;
			}
			public double getCarbFiGramInServ() {
				return carbFiGramInServ;
			}
			public void setCarbFiGramInServ(double carbFiGramInServ) {
				this.carbFiGramInServ = carbFiGramInServ;
			}
			public double getCarbSiGramInServ() {
				return carbSiGramInServ;
			}
			public void setCarbSiGramInServ(double carbSiGramInServ) {
				this.carbSiGramInServ = carbSiGramInServ;
			}
			
			
			public double getFatGramInServ() {
				return fatGramInServ;
			}
			public void setFatGramInServ(double fatGramInServ) {
				this.fatGramInServ = fatGramInServ;
			}
			public double getFatSatGramInServ() {
				return fatSatGramInServ;
			}
			public void setFatSatGramInServ(double fatSatGramInServ) {
				this.fatSatGramInServ = fatSatGramInServ;
			}
			public double getFatColestMgInServ() {
				return fatColestMgInServ;
			}
			public void setFatColestMgInServ(double fatColestMgInServ) {
				this.fatColestMgInServ = fatColestMgInServ;
			}
			public double getFatPolyGramInServ() {
				return fatPolyGramInServ;
			}
			public void setFatPolyGramInServ(double fatPolyGramInServ) {
				this.fatPolyGramInServ = fatPolyGramInServ;
			}
			public double getFatMonoGramInServ() {
				return fatMonoGramInServ;
			}
			public void setFatMonoGramInServ(double fatMonoGramInServ) {
				this.fatMonoGramInServ = fatMonoGramInServ;
			}
			public double getFatO3MgInServ() {
				return fatO3MgInServ;
			}
			public void setFatO3MgInServ(double fatO3MgInServ) {
				this.fatO3MgInServ = fatO3MgInServ;
			}
			
			
			public double getProtGramInServ() {
				return protGramInServ;
			}
			public void setProtGramInServ(double protGramInServ) {
				this.protGramInServ = protGramInServ;
			}
			public double getProtEssGramInServ() {
				return protEssGramInServ;
			}
			public void setProtEssGramInServ(double protEssGramInServ) {
				this.protEssGramInServ = protEssGramInServ;
			}
			
			
			public double getSodiumMgInServ() {
				return sodiumMgInServ;
			}
			public void setSodiumMgInServ(double sodiumMgInServ) {
				this.sodiumMgInServ = sodiumMgInServ;
			}
			public double getPottasiumMgInServ() {
				return pottasiumMgInServ;
			}
			public void setPottasiumMgInServ(double pottasiumMgInServ) {
				this.pottasiumMgInServ = pottasiumMgInServ;
			}
			
			

			
	
}
