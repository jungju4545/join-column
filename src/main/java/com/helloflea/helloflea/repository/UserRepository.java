package com.helloflea.helloflea.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.helloflea.helloflea.model.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	User findByUsername(String username);
	User findByUsernameAndPassword(String username, String password);
}