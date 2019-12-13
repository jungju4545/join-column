package com.helloflea.helloflea.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.helloflea.helloflea.model.User;
import com.helloflea.helloflea.repository.UserRepository;


@Service
public class MyUserDetailService implements UserDetailsService {

	@Autowired
	private UserRepository mRepo;

	// loginForm에서 action="user/loginProcess" 되면
	// 스프링 필터 체인이 낚아채서 loadUserByUsername를 호출한다
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = mRepo.findByUsername(username);
		MyUserDetails userDetails = null;
		if (user != null) {
			System.out.println("로그인 성공 : " + username);
			userDetails = new MyUserDetails();
			userDetails.setUser(user);
		} else {
			throw new UsernameNotFoundException("유저 네임 없음 : " + username);
		}
		return userDetails;
	}
}
