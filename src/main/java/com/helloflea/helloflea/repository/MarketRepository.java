package com.helloflea.helloflea.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.ui.Model;

import com.helloflea.helloflea.model.Market;

public interface MarketRepository extends JpaRepository<Market, Integer>{
	Optional<Market> findByCategory(Model model);
	Optional<Market> findByKakaoId(String kakaoId);
}
