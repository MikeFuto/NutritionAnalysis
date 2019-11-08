package com.web.capstone.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.capstone.model.Cart;
import com.web.capstone.model.Ingredients;
import com.web.capstone.repository.IngredientRepository;


@Service
public class CalculateNutrition {

	@Autowired
	IngredientRepository ingridientRepository;


	
	public AnalysisData sumAll(List<Cart> cartData) {
		
		
		AnalysisData analysisData = new AnalysisData();
		if(cartData != null) {
			cartData.forEach( cart -> {
				Optional<Ingredients> ingredient = ingridientRepository.findById(cart.getIngredientId());
				if(ingredient.isPresent()) {
				
					double calInPkg = 0;
					double carbFiGramInPkg = 0;
					double carbEnergyGramInServ = 0;
					double carbGramInPkg = 0;
					double protGramInPkg = 0;
					double fatGramInPkg = 0;
					double sodiumMgInPkg =0;
					double potassiumMgInPkg =0;

					analysisData.setPlanName("Test");
					analysisData.setPlanDate("Test");
					analysisData.setPlanDescription("&#8259");
					
			//		int quantity = cartData<QuantOrdered>;
					int quantity = cart.getQuantOrdered();
					
					
		//cost and calories	totals		
						//add up the calories totals and cost totals and set in the analysis object
					calInPkg = ingredient.get().getServInPkg() * ingredient.get().getCalInServ();
					analysisData.setCalTotal(analysisData.getCalTotal() + (calInPkg * quantity));
					analysisData.setCostTotal(analysisData.getCostTotal() + (ingredient.get().getCostOfPkg() * quantity));
										
		// sub-categories totals
						// adding total fiber Carbs and setting it in analysis object	
					carbFiGramInPkg = ingredient.get().getServInPkg() * ingredient.get().getCarbFiGramInServ();
					analysisData.setCarbFiGramTotal(analysisData.getCarbFiGramTotal() + (carbFiGramInPkg * quantity));
	//	System.out.println("CarbFiGramTotal() out is: " +  analysisData.getCarbFiGramTotal() );
						// adding total ENERGY Carbs and setting it in analysis object
						//this needs adjustment for 2 cal/gram for soluable fibers
					carbEnergyGramInServ = ingredient.get().getCarbGramInServ() - ingredient.get().getCarbFiGramInServ();
					carbGramInPkg = ingredient.get().getServInPkg() * carbEnergyGramInServ;
					analysisData.setCarbGramTotal(analysisData.getCarbGramTotal() + (carbGramInPkg * quantity));
	//	System.out.println("CarbGramTotal() out is: " +  analysisData.getCarbGramTotal() );			
					
						// adding total proteins and setting it in analysis object
					protGramInPkg = ingredient.get().getServInPkg() * ingredient.get().getProtGramInServ();
					analysisData.setProtGramTotal(analysisData.getProtGramTotal() + (protGramInPkg * quantity));
	//	System.out.println("ProtGramTotal() out is: " +  analysisData.getProtGramTotal() );				
					
						// adding total fats and setting it in analysis object
					fatGramInPkg = ingredient.get().getServInPkg() * ingredient.get().getFatGramInServ();
					analysisData.setFatGramTotal(analysisData.getFatGramTotal() + (fatGramInPkg * quantity));
					
					
					// adding total Na and K and setting it in analysis object
					sodiumMgInPkg = ingredient.get().getServInPkg() * ingredient.get().getSodiumMgInServ();
					analysisData.setSodiumMgTotal(analysisData.getSodiumMgTotal() + (sodiumMgInPkg * quantity));
					
					potassiumMgInPkg = ingredient.get().getServInPkg() * ingredient.get().getPottasiumMgInServ();
					analysisData.setPotassiumMgTotal(analysisData.getPotassiumMgTotal() + (potassiumMgInPkg * quantity));
					
				}
			});
		}

//====================================================================================================
		
		//double rounded = Math. round(raw * 100.0) / 100.0;
		//set the average cost per day and # of days into the analysis data object	
				//calories per day is defaulted to 2000 for now (but is a calculation set with user account
		System.out.println(analysisData.getCalTotal() + " here " +   (analysisData.getCalTotal() / 2000));
				analysisData.setNumOfDays(Math.round((analysisData.getCalTotal() / 2000)*100.0)/100.0);  				
				analysisData.setCostInDayAvg(Math.round((analysisData.getCostTotal() / analysisData.getNumOfDays())*100.0) /100.0);  
		
		//sub-categories averages per day and percent of daily and warning color assignments in analysis data object
					//Fiber Carbohydrates
				analysisData.setCarbFiGramInDayAvg(Math.round(((analysisData.getCarbFiGramTotal() / analysisData.getNumOfDays()) * 100.0) / 100.0));
// percent is not applicable until calculated for percent of RDA
				
					//Carbohydrates totals and percent of daily
				analysisData.setCarbGramInDayAvg(Math.round(((analysisData.getCarbGramTotal() / analysisData.getNumOfDays())*100.0)/100.0));
				analysisData.setCarbCalPercent(Math.round((analysisData.getCarbGramInDayAvg() / 488)*100));  //2000cal /4.1 = 488grams		

					//Proteins
				analysisData.setProtGramInDayAvg(Math.round(((analysisData.getProtGramTotal() / analysisData.getNumOfDays())*100.0)/100.0));
				analysisData.setProtPercent(Math.round((analysisData.getProtGramInDayAvg() / 488)*100));	//2000cal /4.1 = 488grams	
				
					//Fats
				analysisData.setFatGramInDayAvg(Math.round(((analysisData.getFatGramTotal() / analysisData.getNumOfDays())*100.0)/100.0));
				analysisData.setFatPercent(Math.round((analysisData.getFatGramInDayAvg() / 222)*100));  //2000cal /9 = 222grams	
				
				
					//Sodium and Potassium in milligrams
				analysisData.setSodiumMgInDayAvg(Math.round(((analysisData.getSodiumMgTotal() / analysisData.getNumOfDays()) *100.0)/100.0));
// percent is not applicable until calculated for percent of RDA
				
				analysisData.setPotassiumMgInDayAvg(Math.round(((analysisData.getPotassiumMgTotal() / analysisData.getNumOfDays()) * 100.0)/ 100.0));
// percent is not applicable until calculated for percent of RDA

//==========================================================================================				
				
		//this is where color warnings are set by comparing against the RDA values
				
					//Carbohydrate warnings
				if (analysisData.getCarbGramInDayAvg() < analysisData.getCarbMin()) {
					analysisData.setWarnColorCarbs("alert alert-danger");
				}
				else if ( analysisData.getCarbGramInDayAvg() >= analysisData.getCarbMin() && analysisData.getCarbGramInDayAvg() < analysisData.getCarbRecMin() ) {
					analysisData.setWarnColorCarbs("alert alert-warning");
				}
				else if (analysisData.getCarbGramInDayAvg() >= analysisData.getCarbRecMin() &&  analysisData.getCarbGramInDayAvg() < analysisData.getCarbRecMax()) {
					analysisData.setWarnColorCarbs("alert alert-success");
				}
				else if (analysisData.getCarbGramInDayAvg() >= analysisData.getCarbRecMax()) {
					analysisData.setWarnColorCarbs("alert alert-warning");
				}
				else { analysisData.setWarnColorCarbs("alert alert-light");}
		//=======		
					//Fiber warnings
				if ( analysisData.getCarbGramInDayAvg() < analysisData.getCarbFiberRecMin() ) {
					analysisData.setWarnColorFiCarbs("alert alert-warning");
				}
				else if (analysisData.getCarbGramInDayAvg() >= analysisData.getCarbFiberRecMin() &&  analysisData.getCarbGramInDayAvg() < analysisData.getCarbFiberRecMax()) {
					analysisData.setWarnColorFiCarbs("alert alert-success");
				}
				else if (analysisData.getCarbGramInDayAvg() >= analysisData.getCarbFiberRecMax()) {
					analysisData.setWarnColorFiCarbs("alert alert-warning");
				}
				else { analysisData.setWarnColorFiCarbs("alert alert-light");}
//==============				  
					//Protein warnings
				if ( analysisData.getProtGramInDayAvg() < analysisData.getProteinMin() ) {
					analysisData.setWarnColorProt("alert alert-danger");
				}
				else if (analysisData.getProtGramInDayAvg() >= analysisData.getProteinMin() &&  analysisData.getProtGramInDayAvg() < analysisData.getProteinRecMin()) {
					analysisData.setWarnColorProt("alert alert-warning");
				}
				else if (analysisData.getProtGramInDayAvg() >= analysisData.getProteinRecMin()) {
					analysisData.setWarnColorProt("alert alert-success");
				}
				else { analysisData.setWarnColorProt("alert alert-light");}
//==============						
					//Fat warnings
				if ( analysisData.getFatGramInDayAvg() < analysisData.getFatRecMin() ) {
					analysisData.setWarnColorFats("alert alert-warning");
				}
				else if (analysisData.getFatGramInDayAvg() >= analysisData.getFatRecMin() &&  analysisData.getFatGramInDayAvg() < analysisData.getFatRecMax()) {
					analysisData.setWarnColorFats("alert alert-success");
				}
				else if (analysisData.getFatGramInDayAvg() >= analysisData.getFatRecMax()) {
					analysisData.setWarnColorFats("alert alert-warning");
				}
				else { analysisData.setWarnColorFats("alert alert-light");}
//==============	
					//Salt warnings
				if (analysisData.getSodiumMgInDayAvg() < analysisData.getSaltMin()) {
					analysisData.setWarnColorNa("alert alert-danger");
				}
				else if ( analysisData.getSodiumMgInDayAvg() >= analysisData.getSaltMin() && analysisData.getCarbGramInDayAvg() < analysisData.getSaltRecMax() ) {
					analysisData.setWarnColorNa("alert alert-success");
				}
				else if (analysisData.getSodiumMgInDayAvg() >= analysisData.getSaltRecMax() &&  analysisData.getCarbGramInDayAvg() < analysisData.getSaltMaxSuggest()) {
					analysisData.setWarnColorNa("alert alert-warning");
				}
				else if (analysisData.getSodiumMgInDayAvg() >= analysisData.getSaltMaxSuggest()) {
					analysisData.setWarnColorNa("alert alert-danger");
				}
				else { analysisData.setWarnColorNa("alert alert-light");}
		//=======	
					//Potassium warnings
				if ( analysisData.getPotassiumMgInDayAvg() < analysisData.getPotasRecMin() ) {
					analysisData.setWarnColorK("alert alert-warning"); //alert-warning yellow or orange
				}
				else if (analysisData.getPotassiumMgInDayAvg() >= analysisData.getPotasRecMin() &&  analysisData.getPotassiumMgInDayAvg() < analysisData.getPotasRecMax()) {
					analysisData.setWarnColorK("alert alert-success"); //alert-success or text-success green
				}
				else if (analysisData.getPotassiumMgInDayAvg() >= analysisData.getPotasRecMax()) {
					analysisData.setWarnColorK("alert alert-info"); //blue
				}
				else { analysisData.setWarnColorK("alert alert-light");} //default
				
				
						
				
		return analysisData;	
	}
	
	
}


