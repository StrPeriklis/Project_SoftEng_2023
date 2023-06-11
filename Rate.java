package com.example.omnibus;

import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Rate {
	@Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	
	private Integer gradebus;
	private Integer gradeDriver;
	private String Comment1;
	private String Comment2;
	private Date dt;
	@ManyToOne
	  @JoinColumn(name = "uid", referencedColumnName = "id")
	private User usr;
	
	@ManyToOne
	  @JoinColumn(name = "did", referencedColumnName = "id")
	
	private Driver drv;
	@ManyToOne
	  @JoinColumn(name = "bid", referencedColumnName = "id")
	
	private Bus b;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getGradebus() {
		return gradebus;
	}
	public void setGradebus(Integer gradebus) {
		this.gradebus = gradebus;
	}
	public Integer getGradeDriver() {
		return gradeDriver;
	}
	public void setGradeDriver(Integer gradeDriver) {
		this.gradeDriver = gradeDriver;
	}
	public String getComment1() {
		return Comment1;
	}
	public void setComment1(String comment1) {
		Comment1 = comment1;
	}
	public String getComment2() {
		return Comment2;
	}
	public void setComment2(String comment2) {
		Comment2 = comment2;
	}
	public Date getDt() {
		return dt;
	}
	public void setDt(Date dt) {
		this.dt = dt;
	}
	public Driver getDrv() {
		return drv;
	}
	public void setDrv(Driver drv) {
		this.drv = drv;
	}
	public Bus getB() {
		return b;
	}
	public void setB(Bus b) {
		this.b = b;
	}
	
	
}
