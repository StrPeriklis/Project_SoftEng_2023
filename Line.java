package com.example.omnibus;

import java.util.Set;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Line {
	@Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	
	private String title;
	private String Description; 
	
	@ManyToOne
	  @JoinColumn(name = "bid", referencedColumnName = "id")
	private Bus B[];

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public Bus[] getB() {
		return B;
	}

	public void setB(Bus[] b) {
		B = b;
	}

	
	
	
}
