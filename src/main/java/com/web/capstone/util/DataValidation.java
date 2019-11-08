package com.web.capstone.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.web.capstone.model.User;
import com.web.capstone.repository.UserRepository;

import com.web.capstone.model.Ingredients;
import com.web.capstone.repository.IngredientRepository;


@Component
public class DataValidation implements Validator {
		
	@Autowired 
	private UserRepository userRepository;
	
	String emailRegex = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$";
			
	@Autowired
	public DataValidation(UserRepository userRepository) {
		this.userRepository = userRepository;
	}
	
	public boolean supports(Class<?> clazz) {
		return User.class.isAssignableFrom(clazz);
	}

	public void validate(Object o, Errors errors) {
		User user = (User) o;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lname", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fname", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "NotEmpty");
	
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty");		
		if (userRepository.findByEmail(user.getEmail()) !=null) {
	    	errors.rejectValue("email", "size.user.unique");
	    }
		
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
        if (user.getPassword().length() <=0  ||  user.getPassword().length() < 4) {
	    	errors.rejectValue("password", "size.user.password");
	    }
        
        if (!user.getEmail().matches(emailRegex)) {
        	errors.rejectValue("email", "size.user.email");
	    }       
		
	}
	
	
	public void validateIngred(Object o, Errors errors) {
		Ingredients ingredient = (Ingredients) o;
//		User user = (User) o;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "productName", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "productMfg", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "upcCode", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "category", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "costOfPkg", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "servInPkg", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "calInServ", "NotEmpty");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "carbGramInServ", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "carbFiGramInServ", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "protGramInServ", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fatGramInServ", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sodiumMgInServ", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pottasiumMgInServ", "NotEmpty");
	
		
//		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty");		
//		if (userRepository.findByEmail(user.getEmail()) !=null) {
//	    	errors.rejectValue("email", "size.user.unique");
//	    }
		
//        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
//        if (user.getPassword().length() <=0  ||  user.getPassword().length() < 4) {
//	    	errors.rejectValue("password", "size.user.password");
//	    }
        
//        if (!user.getEmail().matches(emailRegex)) {
//        	errors.rejectValue("email", "size.user.email");
//	    }       
//	
	
	
	
	
	
	}
	
	
}