package com.example.omnibus;

import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Ticket {

	@Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	private Integer TicketNum;
	private Date usedDate;
	private Date ekdosi;
	
	@ManyToOne
	  @JoinColumn(name = "lid", referencedColumnName = "id")
	private Line L;
	private String type;
	@ManyToOne
	  @JoinColumn(name = "uid", referencedColumnName = "id")
	private User U;
	
	
	
}
