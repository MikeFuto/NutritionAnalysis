package com.web.capstone.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.web.capstone.model.Addressess;
import com.web.capstone.model.Cart;
import com.web.capstone.model.PlanAnalysis;

public interface PlanAnalysisRepository extends JpaRepository<PlanAnalysis, Long> {

	
//	PlanAnalysis findByEmail(String email);
//	
//	@Query("FROM PlanAnaysis WHERE role=?1") 
//	PlanAnalysis findByRole(String role);
//	  
//	@Query("FROM PlanAnalysis where role like ?1 ") 
//	List<PlanAnalysis> getByRole(String role);
//	
	
// What I need is a join between cart list and the Ingredients list 
// to bring back all the items to sum up and calculate averages
// or calculate everything on the fly in the add to cart
	
	
}
