package com.helloflea.helloflea.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.helloflea.helloflea.model.Events;
import com.helloflea.helloflea.model.Market;
import com.helloflea.helloflea.repository.EventsRepository;
import com.helloflea.helloflea.repository.MarketRepository;

@Controller
public class TestKimController {

	@Autowired
	private MarketRepository mMarketRepository;
	
	@Autowired
	private EventsRepository mEventsRepository;
	
	@GetMapping("/test/root/market/list")
	public String rootMarketList(Model model) {
		
//		Optional<Market> market = mMarketRepository.findById(1);		
//		System.out.println("marketName : " + market.get().getMarketName());
		List<Market> market = mMarketRepository.findAll();		
		model.addAttribute("market", market);
		return "test/roottest";
	}
	
	@GetMapping("/test/market/category/join")
	public String marketCategoryJoinTest(Model model) {
		List<Market> market = mMarketRepository.findAll();		
		model.addAttribute("market", market);
		return "test/roottest";
	}
	
	@GetMapping("/test/root/events/regist")
	public String eventsRegistTest() {
		
		return "test/eventsRegist";
	}
	
	@PostMapping("/test/root/events/registProc")
	public String eventsRegistProcTest(Events events) {
		
		mEventsRepository.save(events);
		
		return "test/eventView";
	}
	
	@GetMapping("/test/index")
	public String testIndex() {
		
		return "test/testIndex";
	}
}
