package com.helloflea.helloflea.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Data
@Entity
public class Market {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id; 
	// 마켓 이름
	private String marketName;
	// 마켓 지역
	private String local;
	// 마켓 주소
	private String address;
	// 마켓 카테고리
	private String category;
	//카톡 아이디
	private String kakaoId;
	//마켓 설명
	private String marketIntro;
	//마켓 사진
	private String marketImage;
	//마켓 상태
	private String marketStatus;
	
	//사용자 아이디
	//private User user 
	
	@CreationTimestamp
	private Timestamp createDate;
	@CreationTimestamp
	private Timestamp updateDate;
}
