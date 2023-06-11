package com.example.omnibus;

import java.util.Set;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

public class Driver {
	@Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	
	private String email;
	private String password;
	private String fullname;
	private String afm;
	@ManyToOne
	  @JoinColumn(name = "bid", referencedColumnName = "id")
	private Bus B[];
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getAfm() {
		return afm;
	}
	public void setAfm(String afm) {
		this.afm = afm;
	}
	public Bus[] getB() {
		return B;
	}
	public void setB(Bus[] b) {
		B = b;
	}
	
	
	
}
