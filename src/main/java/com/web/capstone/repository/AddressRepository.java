package com.web.capstone.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.web.capstone.model.Addressess;


@Repository
public interface AddressRepository extends JpaRepository<Addressess, Long> {

	
	Addressess findByEmail(String email);
	
	
	
	
}



