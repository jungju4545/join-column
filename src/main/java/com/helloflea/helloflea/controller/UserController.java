package com.helloflea.helloflea.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.helloflea.helloflea.model.Local;
import com.helloflea.helloflea.model.User;
import com.helloflea.helloflea.repository.UserRepository;
import com.helloflea.helloflea.security.MyUserDetails;
import com.helloflea.helloflea.util.Script;

@Controller
public class UserController {

	@Autowired
	UserRepository mRepo;

	@Autowired
	private BCryptPasswordEncoder encoder;

	@GetMapping("/user/loginForm")
	public String userloginForm() {
		return "/user/login";
	}

	@GetMapping("/user/joinForm")
	public String userjoinForm() {
		return "/user/join";
	}

	@PostMapping("/user/join")
	public String userjoin(User user) {		
		String encPassword = encoder.encode(user.getPassword());
		user.setPassword(encPassword);
		mRepo.save(user);
		System.out.println("회원가입 완료");
		return "redirect:/user/loginForm";
	}
	@GetMapping("/user/profile")
	public String userprofile() {
		return "/user/profile";
	}
	
	@GetMapping("/user/updateform")
	public @ResponseBody String userupdateform(Local local, Model model, Authentication auth) {
		if(auth == null) {
			System.out.println("로그인하셈");
			return Script.Back("로그인 후 이용해주세요.");
		}else {
			MyUserDetails detailService = (MyUserDetails) auth.getPrincipal();
			model.addAttribute("MyUserDetailService", detailService);
			model.addAttribute("auth", auth);			
			System.out.println("수정페이지 이동");
			return Script.href("/user/profile");	
		}				
	}
	
	@PostMapping("/user/update")
	public String userEditProc(User requestUser, @AuthenticationPrincipal MyUserDetails myUserDetails) {
		String encPassword = encoder.encode(requestUser.getPassword());
		requestUser.setPassword(encPassword);
		// 영속화
		Optional<User> oUser = mRepo.findById(myUserDetails.getUser().getId());
		User user = oUser.get();
		// 값 변경		
		user.setPassword(requestUser.getPassword());
		user.setEmail(requestUser.getEmail());	
		// 다시 영속화 및 flush
		mRepo.save(user);
		System.out.println("수정완료");
		return "redirect:/";
	}
	
	
}
