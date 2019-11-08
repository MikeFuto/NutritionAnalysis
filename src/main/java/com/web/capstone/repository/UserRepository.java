package com.web.capstone.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.web.capstone.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

	@Query("FROM User WHERE email=?1")
	User findByEmail(String email);
	@Query("FROM User where lname like ?1 ")
	List<User> getByLastName(String lname);
	
}
