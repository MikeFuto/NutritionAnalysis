package com.web.capstone.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class OtherConcerns {

				//identification info
			@Id
			@GeneratedValue(strategy = GenerationType.AUTO)
			@Column(name="id")
			private long id;
			
				//package info
			private String productName;
			private String UPCcode;
			private String explanations;
				
			//private String servingVitamins;
			//private String servingMinerals;
				
				
				//possible substitutions
			private String substituteBy1;
			private String substituteBy2;
			private String substituteFor1;
			private String substituteFor2;
			
			
				//main usages and cooking and storage considerations
			private String storageConsiderations;
			private String storageWarnings;
			private String cookingConsiderations;
			private String cookingWarnings;
			private String otherBenefits;
			private String otherCautions;	
				
				
				
}
