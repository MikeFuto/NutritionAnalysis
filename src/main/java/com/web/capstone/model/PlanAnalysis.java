package com.web.capstone.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PlanAnalysis {

	
		//plan identifier info
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id")
	private long id;
	
		//Cart instance 
	private String planName;
	private Date planDate;
	private String planUserId;
	private String planDescription;
	
		//user set ranges and quantified success 
	private String daysTarget;			
	private String calTarget;
	private String costTarget;
	
		//density calculations?
	private double calTotal;			//?
	private double calInDayAvg;			//rate of weight adjustments
	private double servTotal;			//meal size
	private double gramTotal;			//meal size
	private double costTotal;			//budget
	private double costInDayAvg;		//rate of budget
	private double numOfDays;		//rate of budget
	//density calculations?
	
	
		//nutrition info - carbs
	private double carbGramTotal;	
	private double carbCalInDayAvg;			//density calculation average daily
	private double carbCalPercent;
	private double warnColorCarbs;
	
	private double carbFiGramTotal;			//motility
	private double carbFiGramInDayAvg;		//density calculation average daily
	private double carbFiPercent;
	private double warnColorFiCarbs;
	
	private double carbSiGramTotal;			//sugars, starches hypoglycemic index
	private double carbSiGramInDayAvg;		//density calculation average daily
		
		//nutrition info - fats
	private double fatGramTotal;
	private double fatGramInDayAvg;			//density calculation average daily
	private double fatPercent;
	private double warnColorFats;
	
	private double fatSatGramTotal;
	private double fatSatGramInDayAvg;		//density calculation average daily
	private double fatSatPercent;
	private double warnColorSat;
	
	private double fatColestMgTotal;
	private double fatPolyGramTotal;
	private double fatMonoGramTotal;
	
	private double fatO3MgTotal;
	private double fatO3MgInDayAvg;			//density calculation average daily
	private double fatO3Percent;
	private double warnColorO3;
	
		//nutrition info - proteins
	private double protGramTotal;	
	private double protGramInDayAvg;		//density calculation average daily
	private double protPercent;
	private double warnColorProt;
	
	private double protEssGramTotal;		
	private double protEssGramInDayAvg;		//density calculation average daily
	
	
		//nutrition info - other
	private double sodiumMgTotal;
	private double sodiumMgInDayAvg;		//density calculation average daily
	private double sodiumPercent;
	private double warnColorNa;
	
	private double pottasiumMgTotal;
	private double pottasiumMgInDayAvg;		//density calculation average daily
	private double pottasiumPercent;
	private double warnColorK;
	
	//private String VitaminsInServ;
	//private String MineralsInServ;
	
	
		//nutrition info - allergies/carcinogens/other
	private double peanutsTotal;
	private double treeNutsTotal;
	private double shellFishTotal;
	
	private double mercuryTotal;
	private double mercuryInDayAvg;
	private double msgFlavorTotal;
	private double msgFlavorInDayAvg;
	private double artSweetTotal;
	private double artSweetInDayAvg;
	private double preservTotal;
	private double preservInDayAvg;
	private double fatTransGramTotal;
	private double fatTransGramInDayAvg;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getPlanName() {
		return planName;
	}
	public void setPlanName(String planName) {
		this.planName = planName;
	}
	public Date getPlanDate() {
		return planDate;
	}
	public void setPlanDate(Date planDate) {
		this.planDate = planDate;
	}
	public String getPlanUserId() {
		return planUserId;
	}
	public void setPlanUserId(String planUserId) {
		this.planUserId = planUserId;
	}
	public String getPlanDescription() {
		return planDescription;
	}
	public void setPlanDescription(String planDescription) {
		this.planDescription = planDescription;
	}
	public String getDaysTarget() {
		return daysTarget;
	}
	public void setDaysTarget(String daysTarget) {
		this.daysTarget = daysTarget;
	}
	public String getCalTarget() {
		return calTarget;
	}
	public void setCalTarget(String calTarget) {
		this.calTarget = calTarget;
	}
	public String getCostTarget() {
		return costTarget;
	}
	public void setCostTarget(String costTarget) {
		this.costTarget = costTarget;
	}
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
	public double getServTotal() {
		return servTotal;
	}
	public void setServTotal(double servTotal) {
		this.servTotal = servTotal;
	}
	public double getGramTotal() {
		return gramTotal;
	}
	public void setGramTotal(double gramTotal) {
		this.gramTotal = gramTotal;
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
	public double getNumOfDays() {
		return numOfDays;
	}
	public void setNumOfDays(double numOfDays) {
		this.numOfDays = numOfDays;
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
	public double getWarnColorCarbs() {
		return warnColorCarbs;
	}
	public void setWarnColorCarbs(double warnColorCarbs) {
		this.warnColorCarbs = warnColorCarbs;
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
	public double getWarnColorFiCarbs() {
		return warnColorFiCarbs;
	}
	public void setWarnColorFiCarbs(double warnColorFiCarbs) {
		this.warnColorFiCarbs = warnColorFiCarbs;
	}
	public double getCarbSiGramTotal() {
		return carbSiGramTotal;
	}
	public void setCarbSiGramTotal(double carbSiGramTotal) {
		this.carbSiGramTotal = carbSiGramTotal;
	}
	public double getCarbSiGramInDayAvg() {
		return carbSiGramInDayAvg;
	}
	public void setCarbSiGramInDayAvg(double carbSiGramInDayAvg) {
		this.carbSiGramInDayAvg = carbSiGramInDayAvg;
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
	public double getWarnColorFats() {
		return warnColorFats;
	}
	public void setWarnColorFats(double warnColorFats) {
		this.warnColorFats = warnColorFats;
	}
	public double getFatSatGramTotal() {
		return fatSatGramTotal;
	}
	public void setFatSatGramTotal(double fatSatGramTotal) {
		this.fatSatGramTotal = fatSatGramTotal;
	}
	public double getFatSatGramInDayAvg() {
		return fatSatGramInDayAvg;
	}
	public void setFatSatGramInDayAvg(double fatSatGramInDayAvg) {
		this.fatSatGramInDayAvg = fatSatGramInDayAvg;
	}
	public double getFatSatPercent() {
		return fatSatPercent;
	}
	public void setFatSatPercent(double fatSatPercent) {
		this.fatSatPercent = fatSatPercent;
	}
	public double getWarnColorSat() {
		return warnColorSat;
	}
	public void setWarnColorSat(double warnColorSat) {
		this.warnColorSat = warnColorSat;
	}
	public double getFatColestMgTotal() {
		return fatColestMgTotal;
	}
	public void setFatColestMgTotal(double fatColestMgTotal) {
		this.fatColestMgTotal = fatColestMgTotal;
	}
	public double getFatPolyGramTotal() {
		return fatPolyGramTotal;
	}
	public void setFatPolyGramTotal(double fatPolyGramTotal) {
		this.fatPolyGramTotal = fatPolyGramTotal;
	}
	public double getFatMonoGramTotal() {
		return fatMonoGramTotal;
	}
	public void setFatMonoGramTotal(double fatMonoGramTotal) {
		this.fatMonoGramTotal = fatMonoGramTotal;
	}
	public double getFatO3MgTotal() {
		return fatO3MgTotal;
	}
	public void setFatO3MgTotal(double fatO3MgTotal) {
		this.fatO3MgTotal = fatO3MgTotal;
	}
	public double getFatO3MgInDayAvg() {
		return fatO3MgInDayAvg;
	}
	public void setFatO3MgInDayAvg(double fatO3MgInDayAvg) {
		this.fatO3MgInDayAvg = fatO3MgInDayAvg;
	}
	public double getFatO3Percent() {
		return fatO3Percent;
	}
	public void setFatO3Percent(double fatO3Percent) {
		this.fatO3Percent = fatO3Percent;
	}
	public double getWarnColorO3() {
		return warnColorO3;
	}
	public void setWarnColorO3(double warnColorO3) {
		this.warnColorO3 = warnColorO3;
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
	public double getWarnColorProt() {
		return warnColorProt;
	}
	public void setWarnColorProt(double warnColorProt) {
		this.warnColorProt = warnColorProt;
	}
	public double getProtEssGramTotal() {
		return protEssGramTotal;
	}
	public void setProtEssGramTotal(double protEssGramTotal) {
		this.protEssGramTotal = protEssGramTotal;
	}
	public double getProtEssGramInDayAvg() {
		return protEssGramInDayAvg;
	}
	public void setProtEssGramInDayAvg(double protEssGramInDayAvg) {
		this.protEssGramInDayAvg = protEssGramInDayAvg;
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
	public double getWarnColorNa() {
		return warnColorNa;
	}
	public void setWarnColorNa(double warnColorNa) {
		this.warnColorNa = warnColorNa;
	}
	public double getPottasiumMgTotal() {
		return pottasiumMgTotal;
	}
	public void setPottasiumMgTotal(double pottasiumMgTotal) {
		this.pottasiumMgTotal = pottasiumMgTotal;
	}
	public double getPottasiumMgInDayAvg() {
		return pottasiumMgInDayAvg;
	}
	public void setPottasiumMgInDayAvg(double pottasiumMgInDayAvg) {
		this.pottasiumMgInDayAvg = pottasiumMgInDayAvg;
	}
	public double getPottasiumPercent() {
		return pottasiumPercent;
	}
	public void setPottasiumPercent(double pottasiumPercent) {
		this.pottasiumPercent = pottasiumPercent;
	}
	public double getWarnColorK() {
		return warnColorK;
	}
	public void setWarnColorK(double warnColorK) {
		this.warnColorK = warnColorK;
	}
	public double getPeanutsTotal() {
		return peanutsTotal;
	}
	public void setPeanutsTotal(double peanutsTotal) {
		this.peanutsTotal = peanutsTotal;
	}
	public double getTreeNutsTotal() {
		return treeNutsTotal;
	}
	public void setTreeNutsTotal(double treeNutsTotal) {
		this.treeNutsTotal = treeNutsTotal;
	}
	public double getShellFishTotal() {
		return shellFishTotal;
	}
	public void setShellFishTotal(double shellFishTotal) {
		this.shellFishTotal = shellFishTotal;
	}
	public double getMercuryTotal() {
		return mercuryTotal;
	}
	public void setMercuryTotal(double mercuryTotal) {
		this.mercuryTotal = mercuryTotal;
	}
	public double getMercuryInDayAvg() {
		return mercuryInDayAvg;
	}
	public void setMercuryInDayAvg(double mercuryInDayAvg) {
		this.mercuryInDayAvg = mercuryInDayAvg;
	}
	public double getMsgFlavorTotal() {
		return msgFlavorTotal;
	}
	public void setMsgFlavorTotal(double msgFlavorTotal) {
		this.msgFlavorTotal = msgFlavorTotal;
	}
	public double getMsgFlavorInDayAvg() {
		return msgFlavorInDayAvg;
	}
	public void setMsgFlavorInDayAvg(double msgFlavorInDayAvg) {
		this.msgFlavorInDayAvg = msgFlavorInDayAvg;
	}
	public double getArtSweetTotal() {
		return artSweetTotal;
	}
	public void setArtSweetTotal(double artSweetTotal) {
		this.artSweetTotal = artSweetTotal;
	}
	public double getArtSweetInDayAvg() {
		return artSweetInDayAvg;
	}
	public void setArtSweetInDayAvg(double artSweetInDayAvg) {
		this.artSweetInDayAvg = artSweetInDayAvg;
	}
	public double getPreservTotal() {
		return preservTotal;
	}
	public void setPreservTotal(double preservTotal) {
		this.preservTotal = preservTotal;
	}
	public double getPreservInDayAvg() {
		return preservInDayAvg;
	}
	public void setPreservInDayAvg(double preservInDayAvg) {
		this.preservInDayAvg = preservInDayAvg;
	}
	public double getFatTransGramTotal() {
		return fatTransGramTotal;
	}
	public void setFatTransGramTotal(double fatTransGramTotal) {
		this.fatTransGramTotal = fatTransGramTotal;
	}
	public double getFatTransGramInDayAvg() {
		return fatTransGramInDayAvg;
	}
	public void setFatTransGramInDayAvg(double fatTransGramInDayAvg) {
		this.fatTransGramInDayAvg = fatTransGramInDayAvg;
	}
	
	
	
}
