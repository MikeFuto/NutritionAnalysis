package com.web.capstone.controller;


import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.web.capstone.model.Cart;
import com.web.capstone.repository.CartRepository;

import org.springframework.beans.factory.annotation.Autowired;

@RestController
public class ApiController {

	@Autowired
	private CartRepository cartRepository;
	
//	@PostMapping("addToCart")
//	void addToCart( @RequestParam long ingredientId, @RequestParam String isSelected) {
//		
//		//I can do some preliminary analysis here like total calories and # days supply
//		//I can also add up the running total of costs before a full analysis
//		
//		try {
//			if (isSelected.equalsIgnoreCase("S")) {
//				Cart cart = new Cart();
//				cart.setIngredientId(ingredientId);
//				cartRepository.save(cart);
//			}
//			else {
//				cartRepository.deleteByIngredientId(ingredientId);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}	
//	}
	
	
}
