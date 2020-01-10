package com.helloflea.helloflea.model;
import java.sql.Timestamp;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.hibernate.annotations.CreationTimestamp;
import lombok.Data;

@Entity
@Data
public class Market {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String marketName;
	
	@ManyToOne
	@JoinColumn(name="localId")
	private Local local;
	
	@ManyToOne
	@JoinColumn(name="categoryId")
	private Category category;
	
	private String marketAddress;
	private String marketIntro;
	private String kakaoId;
	private String marketImage;
	private String marketState;
	
	@CreationTimestamp
	private Timestamp createDate;
	@CreationTimestamp
	private Timestamp updateDate;
	
	
}
