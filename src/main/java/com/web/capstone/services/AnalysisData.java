package com.web.capstone.services;

public class AnalysisData {

	
	private String planName;
	private String planDate;
	private String planDescription;
	
	
	//density calculations these are from the PlanAnalysis class
	
	private double calTotal;			//?
	private double calInDayAvg;			//rate of weight adjustments     	this is by default 2000 for now
	private double costInDayAvg;		
	
//	private double servTotal;			//meal size	   						who cares
//	private double gramTotal;			//meal size    						who cares
	
	private double costTotal;			//budget			G/	private double costInDayAvg;		//rate of budget	G
	private double numOfDays;			//rate of budget	G

		//nutrition info - carbohydrates
	private double carbGramTotal;
	private double carbGramInDayAvg;		//this is the extra field not in PlanAnalysis 
	
	private double carbCalInDayAvg;			//density calculation average daily  dont really need this field
	private double carbCalPercent;			//this should change to just percent
	private double carbPercent;
	private String warnColorCarbs; 			//warnCarbs

	private double carbFiGramTotal;			//motility
	private double carbFiGramInDayAvg;		//density calculation average daily	
	private double carbFiPercent;			
	private String warnColorFiCarbs;
	
		//nutrition info - proteins
	private double protGramTotal;	
	private double protGramInDayAvg;		//density calculation average daily
	private double protPercent;				// I need to rename this in PlanAnaysis to protGramPercent
	private double protCalPercent;			//this is a new field
	private String warnColorProt;
	

		//nutrition info - fats
	private double fatGramTotal;
	private double fatGramInDayAvg;			//density calculation average daily
	private double fatPercent;
	private String warnColorFats;
	
	
		//nutrition info - other
	private double sodiumMgTotal;
	private double sodiumMgInDayAvg;		//density calculation average daily
	private double sodiumPercent;
	private String warnColorNa;
	
	private double potassiumMgTotal;
	private double potassiumMgInDayAvg;		//density calculation average daily
	private double potassiumPercent;
	private String warnColorK;

//	============================================================================================		

	private double proteinMin = 44;			//You should get a minimum of 10% of your daily calories from protein.
	private double proteinRecMin = 65;		
	
	private double carbMin = 35.0;    // 0.7 to 2 ounces (20 to 60 grams) of carbohydrates is typical with a low-carb diet
	private double carbRecMin = 225.0; // 45% daily calorie intake or 225 grams
	private double carbRecMax = 325.0;  //	65% daily calorie intake or 325 grams
	
	private double carbSimpleMin = 27;			//added sugars average no more than 125 calories or 7.5 teaspoons added/day
	
	private double carbFiberRecMin = 31;	//31 grams per day
	private double carbFiberRecMax = 70;	//70 grams per day
		
	private double fatRecMin = 44;				//fat in adults is 20% of total calories per day 
	private double fatRecMax = 80;		   		//65 grams up to 35% of total calories per day from fat. 
	
	private double saltMin = 500;				//no less than 500 milligrams (mg) a day 
	private double saltRecMax = 1500;			//1,500 milligrams (mg) a day 
	private double saltMaxSuggest = 2300;		//no more than 2,300 milligrams (mg) a day 

	private double potasRecMin = 3500;			//3,500 milligrams
	private double potasRecMax = 4700;			//4,700 milligrams
	
	
//	============================================================================================	
		
	//these are from the Ingredients class
	
		//nutrition info - proteins and carbs
//	private double protGramInServ;
//	private double protEssGramInServ;
	

	
			//stats by package
//		private double sizeOz;			needed
//		private double sizeOfPkg;		needed
				
			//stats by serving and package
//		private double costInServ;		// not useful but perhaps for creating a meal
		
	
	
// //these calculations can be done at ingredient creation time but ok to do now		
		
//		private double calInServ;						// needed	
			//+
//		private double servInPkg;
			//=
//		private double calInPkg;						//not needed
			// /
//		private double costOfPkg;						// needed
			// =		
		//calories per dollar or food density by cost	// not really important	but can be for price shopping
									//G					//This is probably good but needs a field and set when creating
	
		
		
//		============================================================================================
// these calculations are done at analysis time but could be useful to calculate along the way
			
			//add calInPkg up will result in 	
//		private double calTotal;			//find this by looping		PlanAnalysis
			// /2000
//		private double numOfDays;				//find after looping first		PlanAnalysis
		
		
		//add costOfPkg up will result in 
//		private double costTotal;			//find this by looping		PlanAnalysis

			// / 
//		numOfDays = 0; 											//PlanAnalysis
			// =
//		private double costInDayAvg;			//find after looping second		PlanAnalysis
		
	
		
		
		
		
		
//		============================================================================================		
	
	

		public double getCalTotal() {
			return calTotal;
		}
		public void setCalTotal(double calTotal) {
			this.calTotal = calTotal;
		}
		public double getCalInDayAvg() {
			return calInDayAvg;
		}
		public void setCalInDayAvg(double calInDayAvg) {
			this.calInDayAvg = calInDayAvg;
		}
		
		
		public double getNumOfDays() {
			return numOfDays;
		}
		public void setNumOfDays(double numOfDays) {
			this.numOfDays = numOfDays;
		}
		
		
		public double getCostTotal() {
			return costTotal;
		}
		public void setCostTotal(double costTotal) {
			this.costTotal = costTotal;
		}
		public double getCostInDayAvg() {
			return costInDayAvg;
		}
		public void setCostInDayAvg(double costInDayAvg) {
			this.costInDayAvg = costInDayAvg;
		}
		
		
		public double getCarbFiGramTotal() {
			return carbFiGramTotal;
		}
		public void setCarbFiGramTotal(double carbFiGramTotal) {
			this.carbFiGramTotal = carbFiGramTotal;
		}
		public double getCarbFiGramInDayAvg() {
			return carbFiGramInDayAvg;
		}
		public void setCarbFiGramInDayAvg(double carbFiGramInDayAvg) {
			this.carbFiGramInDayAvg = carbFiGramInDayAvg;
		}
		public double getCarbFiPercent() {
			return carbFiPercent;
		}
		public void setCarbFiPercent(double carbFiPercent) {
			this.carbFiPercent = carbFiPercent;
		}
		
		
		
		public double getCarbGramTotal() {
			return carbGramTotal;
		}
		public void setCarbGramTotal(double carbGramTotal) {
			this.carbGramTotal = carbGramTotal;
		}
		public double getCarbCalInDayAvg() {
			return carbCalInDayAvg;
		}
		public void setCarbCalInDayAvg(double carbCalInDayAvg) {
			this.carbCalInDayAvg = carbCalInDayAvg;
		}
		public double getCarbCalPercent() {
			return carbCalPercent;
		}
		public void setCarbCalPercent(double carbCalPercent) {
			this.carbCalPercent = carbCalPercent;
		}
	

		public double getProtGramTotal() {
			return protGramTotal;
		}
		public void setProtGramTotal(double protGramTotal) {
			this.protGramTotal = protGramTotal;
		}
		public double getProtGramInDayAvg() {
			return protGramInDayAvg;
		}
		public void setProtGramInDayAvg(double protGramInDayAvg) {
			this.protGramInDayAvg = protGramInDayAvg;
		}
		public double getProtPercent() {
			return protPercent;
		}
		public void setProtPercent(double protPercent) {
			this.protPercent = protPercent;
		}
	
		
		
		//new fields
		
		public double getCarbGramInDayAvg() {
			return carbGramInDayAvg;
		}
		public void setCarbGramInDayAvg(double carbGramInDayAvg) {
			this.carbGramInDayAvg = carbGramInDayAvg;
		}
		
		
		public double getFatGramTotal() {
			return fatGramTotal;
		}
		public void setFatGramTotal(double fatGramTotal) {
			this.fatGramTotal = fatGramTotal;
		}
		public double getFatGramInDayAvg() {
			return fatGramInDayAvg;
		}
		public void setFatGramInDayAvg(double fatGramInDayAvg) {
			this.fatGramInDayAvg = fatGramInDayAvg;
		}
		public double getFatPercent() {
			return fatPercent;
		}
		public void setFatPercent(double fatPercent) {
			this.fatPercent = fatPercent;
		}

		
		
		public double getCarbPercent() {
			return carbPercent;
		}
		public void setCarbPercent(double carbPercent) {
			this.carbPercent = carbPercent;
		}
		public double getProtCalPercent() {
			return protCalPercent;
		}
		public void setProtCalPercent(double protCalPercent) {
			this.protCalPercent = protCalPercent;
		}
		public double getSodiumMgTotal() {
			return sodiumMgTotal;
		}
		public void setSodiumMgTotal(double sodiumMgTotal) {
			this.sodiumMgTotal = sodiumMgTotal;
		}
		public double getSodiumMgInDayAvg() {
			return sodiumMgInDayAvg;
		}
		public void setSodiumMgInDayAvg(double sodiumMgInDayAvg) {
			this.sodiumMgInDayAvg = sodiumMgInDayAvg;
		}
		public double getSodiumPercent() {
			return sodiumPercent;
		}
		public void setSodiumPercent(double sodiumPercent) {
			this.sodiumPercent = sodiumPercent;
		}
	

		
		public double getPotassiumMgTotal() {
			return potassiumMgTotal;
		}
		public void setPotassiumMgTotal(double potassiumMgTotal) {
			this.potassiumMgTotal = potassiumMgTotal;
		}
		public double getPotassiumMgInDayAvg() {
			return potassiumMgInDayAvg;
		}
		public void setPotassiumMgInDayAvg(double potassiumMgInDayAvg) {
			this.potassiumMgInDayAvg = potassiumMgInDayAvg;
		}
		public double getPotassiumPercent() {
			return potassiumPercent;
		}
		public void setPotassiumPercent(double potassiumPercent) {
			this.potassiumPercent = potassiumPercent;
		}
	
//=====================================================================================		
		public double getProteinMin() {
			return proteinMin;
		}
		public void setProteinMin(double proteinMin) {
			this.proteinMin = proteinMin;
		}
		public double getProteinRecMin() {
			return proteinRecMin;
		}
		public void setProteinRecMin(double proteinRecMin) {
			this.proteinRecMin = proteinRecMin;
		}
		public double getCarbMin() {
			return carbMin;
		}
		public void setCarbMin(double carbMin) {
			this.carbMin = carbMin;
		}
		public double getCarbRecMin() {
			return carbRecMin;
		}
		public void setCarbRecMin(double carbRecMin) {
			this.carbRecMin = carbRecMin;
		}
		public double getCarbRecMax() {
			return carbRecMax;
		}
		public void setCarbRecMax(double carbRecMax) {
			this.carbRecMax = carbRecMax;
		}
		public double getCarbSimpleMin() {
			return carbSimpleMin;
		}
		public void setCarbSimpleMin(double carbSimpleMin) {
			this.carbSimpleMin = carbSimpleMin;
		}
		public double getCarbFiberRecMin() {
			return carbFiberRecMin;
		}
		public void setCarbFiberRecMin(double carbFiberRecMin) {
			this.carbFiberRecMin = carbFiberRecMin;
		}
		public double getCarbFiberRecMax() {
			return carbFiberRecMax;
		}
		public void setCarbFiberRecMax(double carbFiberRecMax) {
			this.carbFiberRecMax = carbFiberRecMax;
		}
		public double getFatRecMin() {
			return fatRecMin;
		}
		public void setFatRecMin(double fatRecMin) {
			this.fatRecMin = fatRecMin;
		}
		public double getFatRecMax() {
			return fatRecMax;
		}
		public void setFatRecMax(double fatRecMax) {
			this.fatRecMax = fatRecMax;
		}
		public double getSaltMin() {
			return saltMin;
		}
		public void setSaltMin(double saltMin) {
			this.saltMin = saltMin;
		}
		public double getSaltRecMax() {
			return saltRecMax;
		}
		public void setSaltRecMax(double saltRecMax) {
			this.saltRecMax = saltRecMax;
		}
		public double getSaltMaxSuggest() {
			return saltMaxSuggest;
		}
		public void setSaltMaxSuggest(double saltMaxSuggest) {
			this.saltMaxSuggest = saltMaxSuggest;
		}
		public double getPotasRecMin() {
			return potasRecMin;
		}
		public void setPotasRecMin(double potasRecMin) {
			this.potasRecMin = potasRecMin;
		}
		public double getPotasRecMax() {
			return potasRecMax;
		}
		public void setPotasRecMax(double potasRecMax) {
			this.potasRecMax = potasRecMax;
		}
		
		
		public String getPlanName() {
			return planName;
		}
		public void setPlanName(String planName) {
			this.planName = planName;
		}
		public String getPlanDate() {
			return planDate;
		}
		public void setPlanDate(String planDate) {
			this.planDate = planDate;
		}
		public String getPlanDescription() {
			return planDescription;
		}
		public void setPlanDescription(String planDescription) {
			this.planDescription = planDescription;
		}
		
		
		
		
		public String getWarnColorCarbs() {
			return warnColorCarbs;
		}
		public void setWarnColorCarbs(String warnColorCarbs) {
			this.warnColorCarbs = warnColorCarbs;
		}
		public String getWarnColorFiCarbs() {
			return warnColorFiCarbs;
		}
		public void setWarnColorFiCarbs(String warnColorFiCarbs) {
			this.warnColorFiCarbs = warnColorFiCarbs;
		}
		public String getWarnColorProt() {
			return warnColorProt;
		}
		public void setWarnColorProt(String warnColorProt) {
			this.warnColorProt = warnColorProt;
		}
		public String getWarnColorFats() {
			return warnColorFats;
		}
		public void setWarnColorFats(String warnColorFats) {
			this.warnColorFats = warnColorFats;
		}
		public String getWarnColorNa() {
			return warnColorNa;
		}
		public void setWarnColorNa(String warnColorNa) {
			this.warnColorNa = warnColorNa;
		}
		public String getWarnColorK() {
			return warnColorK;
		}
		public void setWarnColorK(String warnColorK) {
			this.warnColorK = warnColorK;
		}
		
		
		
	
	
	
}
