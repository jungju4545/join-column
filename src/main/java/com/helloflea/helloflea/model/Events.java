package com.helloflea.helloflea.model;


import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Entity
@Data
public class Events {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String eventName;
	private Date startDate;
	private Date endDate;
	private int local;
	private String eventIntro;
	private String eventImage;
	private String managerPhone;
	private String managerAddress;
	private String eventAddress;
	private String eventState;
	
	@CreationTimestamp
	private Timestamp createDate;
	@CreationTimestamp
	private Timestamp updateDate;

}
