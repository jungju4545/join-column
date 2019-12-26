package com.helloflea.helloflea.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.helloflea.helloflea.model.Market;
import com.helloflea.helloflea.repository.MarketRepository;

@Controller
public class TestKimController {

	@Autowired
	private MarketRepository mMarketRepository;
	
	@GetMapping("/test/root/market/list")
	public String rootMarketList(Model model) {
		
//		Optional<Market> market = mMarketRepository.findById(1);		
//		System.out.println("marketName : " + market.get().getMarketName());
		List<Market> market = mMarketRepository.findAll();		
		model.addAttribute("market", market);
		return "test/roottest";
	}
	
	
}
