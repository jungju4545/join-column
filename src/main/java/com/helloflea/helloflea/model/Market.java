package com.helloflea.helloflea.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

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
	// 사진 모델을 따로 만들어서 market이랑 ManyToOne을 해야하나?
	// marketId와 연결?
	private String marketImage;
	//마켓 상태
	private String marketStatus;
	
	//사용자 아이디
	// 이거 마켓 업뎃이나 삭제할때 권한을 부여할때 필요함
	//private User user 
	
	
	@CreationTimestamp
	private Timestamp createDate;
	@CreationTimestamp
	private Timestamp updateDate;
}
