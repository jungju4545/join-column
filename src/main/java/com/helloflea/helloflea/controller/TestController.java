package com.helloflea.helloflea.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {	
	@GetMapping("/admin")
	public @ResponseBody String admin() {
		return "<h1>admin</h1>";
	}
	
	@GetMapping("/root")
	public @ResponseBody String root() {
		return "<h1>root</h1>";
	}
	
	@GetMapping("/test")
	public @ResponseBody String test() {
		return "<h1>test</h1>";
	}
}
