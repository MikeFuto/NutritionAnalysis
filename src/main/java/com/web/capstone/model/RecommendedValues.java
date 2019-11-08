package com.web.capstone.model;

public class RecommendedValues {

	
//	The DRI (Dietary Reference Intake) 
//	Min			Minimum needed daily or average daily. YELLOW
//	RecMin		Recommended minimum normal range on average. GREEN
//	RecMax		Recommended maximum normal range on average. GREEN
//	MaxSuggest	Recommended maximum extended range on average. YELLOW
//	MaxWith		Recommended maximum extended with extenuating circumstances. ORANGE
//	Max			Recommended maximum range under any circumstances. RED


	private double carbMin = 35.0;    // 0.7 to 2 ounces (20 to 60 grams) of carbohydrates is typical with a low-carb diet
	private double carbRecMin = 225.0; // 45% daily calorie intake or 225 grams
	private double carbRecMax = 325.0;  //	65% daily calorie intake or 325 grams
//	private double carbMaxSuggest;
//	private double carbMaxWith;
//	private double carbMax;

	private double carbSimpleMin = 27;			//added sugars average no more than 125 calories or 7.5 teaspoons added/day
//	private double carbSimpleRecMin	 			Foods ranked < 55 are considered to have a low GI.
//	private double carbSimpleRecMax				Foods with a ranking between 56 and 75 are considered to have a moderate GI.
//	private double carbSimpleMaxSuggest			High-GI foods, those with a ranking between 76 and 100,
//	private double carbSimpleMaxWith;			exercize
//	private double carbSimpleMax;

//	private double carbFiberMin;			//american average is 15 grams
	private double carbFiberRecMin = 31;	//31 grams per day
	private double carbFiberRecMax = 70;	//70 grams per day
//	private double carbFiberMaxSuggest
//	private double carbFiberMaxWith
//	private double carbFiberMax

	private double proteinMin = 44;			//You should get a minimum of 10% of your daily calories from protein.
	private double proteinRecMin = 65;		//0.8 grams of protein per kilogram of body weight, or 0.36 grams per pound
//	private double proteinRecMax;	 	   //0.8 grams of protein per kilogram of body weight, or 0.36 grams per pound
//	private double proteinMaxSuggest;
//	private double proteinMaxWith;
//	private double proteinMax;

//	private double proteinProcMin
//	private double proteinProcRecMin
//	private double proteinProcRecMax;		//1 slice of anything per day
//	private double proteinProcMaxSuggest;	//50 grams of processed meat increases colorectal cancer by 18%.
//	private double proteinProcMaxWith;		//50 grams of processed meat increases colorectal cancer by 18%.
//	private double proteinProcMax
//
//	private double proteinRedMin
//	private double proteinRedRecMin
	private double proteinRedRecMax = 466; 		 //466 grams of raw meat this seems wrong. is this per day or week?
	private double proteinRedMaxSuggest	= 750;	 //750 grams of raw meat this seems wrong
//	private double proteinRedMaxWith
//	private double proteinRedMax

	private double fatMin;		
	private double fatRecMin = 44;				//fat in adults is 20% of total calories per day 
	private double fatRecMax = 80;		   		//65 grams up to 35% of total calories per day from fat. 
//	private double fatMaxSuggest;
//	private double fatMaxWith;
//	private double fatMax;
//
//	private double fatO3Min
	private double fatO3RecMin = 0.25;	 		//minimum of 250 mg combined EPA and DHA each day
	private double fatO3RecMax = 0.5;			//minimum of 500 mg combined EPA and DHA each day
	private double fatO3MaxSuggest = 3; 		//omega-3 supplements as long as doses don’t exceed 3,000 mg per day
	private double fatO3MaxWith = 3;			    //high triglycerides take 2,000–4,000 mg daily
//	private double fatO3Max
//
//	private double fatTransMin
//	private double fatTransRecMin
//	private double fatTransRecMax
//	private double fatTransMaxSuggest
//	private double fatTransMaxWith
//	private double fatTransMax
//	 
//	private double fatSatMin
//	private double fatSatRecMin
	private double fatSatRecMax	= 20;			//Saturated fat: less than 10% of calories or 20 grams?
//	private double faSatMaxSuggest
	private double fatSatMaxWith = 0.3;			//Cholesterol: less than 300 mg per day
//	private double fatSatMax
//
//	private double fatPolyUnMin
	private double fatPolyUnRecMin = 11;		//Polyunsaturated fat: 5%.
	private double fatPolyUnRecMax = 22;		//Polyunsaturated fat: 10%
//	private double fatPolyUnMaxSuggest
//	private double fatPolyUnMaxWith
//	private double fatPolyUnMax
//
//	private double fatMonoUnMin
	private double fatMonoUnRecMin = 33;		//Monounsaturated fat: 15% or 300 cal or 33grams
	private double fatMonoUnRecMax = 44;		//Monounsaturated fat: 20% or 400 cal or 44 grams
//	private double fatMonoUnMaxSuggest
//	private double fatMonoUnMaxWith
//	private double fatMonoUnMax
//
//	private double waterMin
	private double waterRecMin = 90;			//half an ounce for each pound you weigh, every day
	private double waterRecMax = 180;			//an ounce of water for each pound you weigh, every day
//	private double waterMaxSuggest;
//	private double waterMaxWith;
	private double waterMax = 768;	  		//should not drink more than 27-33 ounces (0.8-1.0 liters) of water per hour, on average

	private double saltMin = 500;				//no less than 500 milligrams (mg) a day 
//	private double saltRecMin;		
	private double saltRecMax = 1500;			//1,500 milligrams (mg) a day 
	private double saltMaxSuggest = 2300;		//no more than 2,300 milligrams (mg) a day 
//	private double saltMaxWith;
//	private double saltMax;

//	private double potasMin
	private double potasRecMin = 3500;			//3,500 milligrams
	private double potasRecMax = 4700;			//4,700 milligrams
//	private double potasMaxSuggest	
//	private double potasMaxWith
//	private double potasMax
//
//
//	private double msgMin;
//	private double msgRecMin;
//	private double msgRecMax;
//	private double msgMaxSuggest;
//	private double msgMaxWith;
//	private double msgMax;
//
//	private double mercuryMin;
//	private double mercuryRecMin;
	private double mercuryRecMax = 0.65;	// when eating 3 servings per week = 0.15 µg/g. or 0.45micrograms / week
//	private double mercuryMaxSuggest;
//	private double mercuryMaxWith;
//	private double mercuryMax;
//
//	private double peanutsMin;
//	private double peanutsRecMin;
//	private double peanutsRecMax;
//	private double peanutsMaxSuggest;
//	private double peanutsMaxWith;
//	private double peanutsMax;
//
//	private double treeNutsMin;
//	private double treeNutsRecMin;
//	private double treeNutsRecMax;
//	private double treeNutsMaxSuggest;
//	private double treeNutsMaxWith;
//	private double treeNutsMax;
//
//	private double glutenMin;
//	private double glutenRecMin;
//	private double glutenRecMax;
//	private double glutenMaxSuggest;
//	private double glutenMaxWith;
//	private double glutenMax;
//
//	private double shellfishMin;
//	private double shellfishRecMin;
//	private double shellfishRecMax;
//	private double shellfishMaxSuggest;
//	private double shellfishMaxWith;
//	private double shellfishMax;
//
//	private double preservMin;
//	private double preservRecMin;
//	private double preservRecMax;
//	private double preservMaxSuggest;
//	private double preservMaxWith;
//	private double preservMax;
//
//	private double artificialSweetMin;
//	private double artificialSweetRecMin;
//	private double artificialSweetRecMax;
//	private double artificialSweetMaxSuggest;
//	private double artificialSweetMaxWith;
//	private double artificialSweetMax;
//

	// vitamins
	// minerals
	
	
}
