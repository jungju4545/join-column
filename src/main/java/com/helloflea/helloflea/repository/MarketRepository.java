package com.helloflea.helloflea.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.helloflea.helloflea.model.Market;

public interface MarketRepository extends JpaRepository<Market, Integer> {

}
