package com.helloflea.helloflea.config;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.helloflea.helloflea.handler.MyLogoutSuccessHandler;



@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	// 1. Bean 어노테이션은 메서드에 붙여서 객체 생성시 사용
	@Bean
	public BCryptPasswordEncoder encodePWD() {
		return new BCryptPasswordEncoder();
	}
	
	// 2. 필터링
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		http.authorizeRequests()
		.antMatchers("/admin/**","/root/**")
		.authenticated()
		.anyRequest().permitAll()
		.and()
				// .authorizeRequests().antMatchers("/secure/**").authenticated().anyRequest().hasAnyRole("ADMIN").and()
				.formLogin()
				// user의 컬럼명이 다를경우 아래코드 2줄로 설정
				.usernameParameter("username")
				.passwordParameter("password")
				.loginPage("/user/loginForm")
				.loginProcessingUrl("/user/loginProcess")
				.defaultSuccessUrl("/")
				.and()
				.logout().logoutSuccessHandler(new MyLogoutSuccessHandler());
				
	}

	@Autowired
	private UserDetailsService userDetailsService;

	// 내가 인코딩 하는게 아니라 어떤 인코딩으로 패스워드가 만들어졌는지 알려주는거
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(encodePWD());
	}

}