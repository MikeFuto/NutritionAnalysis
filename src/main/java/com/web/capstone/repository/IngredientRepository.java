package com.web.capstone.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.web.capstone.model.Ingredients;

@Repository
public interface IngredientRepository extends JpaRepository<Ingredients, Long> {

	
	  @Query("FROM Ingredients WHERE category=?1") 
	  Ingredients findByCategory(String catagory);
	 
	  @Query("FROM Ingredients where category like ?1 ") 
	  List<Ingredients> getByCategory(String catagory);
	 
	 
	  
	  
}
