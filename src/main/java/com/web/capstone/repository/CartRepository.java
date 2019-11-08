package com.web.capstone.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.web.capstone.model.Cart;


@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {

	Integer deleteByIngredientId(long ingredientId);
//		and email
		
//	  @Query("FROM Cart WHERE cartUserId = email) 
//	  Cart findByEmail(String email);
	
	//these above need to be added for multiple user capability

	
	
//==============================================================
	//Cart findByEmail(String email);
	
//	Cart findAll(String email);
//	
//	  @Query("FROM Cart WHERE cartUserId = email) 
//	  Cart findByEmail(String email);
//	  
//	  @Query("FROM Cart where role like ?1 ") 
//	  List<Cart> getByRole(String role);
	
	
	//List<Cart> findAll(String role);
	 

}
