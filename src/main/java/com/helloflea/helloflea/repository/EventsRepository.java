package com.helloflea.helloflea.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.helloflea.helloflea.model.Events;

public interface EventsRepository extends JpaRepository<Events, Integer>{
	
}
