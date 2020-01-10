package com.helloflea.helloflea.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {	
	
	@GetMapping("/root")
	public @ResponseBody String root() {
		return "<h1>root</h1>";
	}
	
	@GetMapping("/test")
	public String test() {
		return "test";
	}
	
	@GetMapping("/")
	public String home() {
		return "index";
	}
	
	@GetMapping("/login")
	public String login() {
		return "/user/login";
	}
	
	@GetMapping("/join")
	public String join() {
		return "/user/join";
	}
	@GetMapping("/market/list")
	public String marketlist() {
		return "/market/list";
	}
	@GetMapping("/market/{id}")
	public String market(@PathVariable int id) {
		return "/market/detail";
	}
	
	@GetMapping("/event/{id}")
	public String eventDetail(@PathVariable int id) {
		return "/event/detail";
	}
	
	@GetMapping("/event/list")
	public String eventList() {
		return "/event/list";
	}
	

	@GetMapping("/market/reg")
	public String reg() {
		return "/market/reg";
	}
	
	@GetMapping("/market/update")
	public String update() {
		return "/market/update";
	}
	@GetMapping("/market/photoupdate")
	public String pupdate() {
		return "/market/photo_update";
	}
	
	@GetMapping("/market/feed/update")
	public String fupdate() {
		return "/market/feed/update";
	}
	
	@GetMapping("/market/feed/reg")
	public String freg() {
		return "/market/feed/reg";
	}
	
	@GetMapping("/admintest/user")
	public String admin() {
		return "/admin/user";
	}
	@GetMapping("/admintest/event")
	public String admin1() {
		return "/admin/event";
	}
	@GetMapping("/admintest/market")
	public String admin2() {
		return "/admin/market";
	}
	
	@GetMapping("/event/reg")
	public String evreg() {
		return "/event/reg";
	}
	
}
