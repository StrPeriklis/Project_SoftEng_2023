package com.example.omnibus;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Bus {
	@Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	
	private String arithmos_kykloforias;
	private String etos_kykloforias;
	private Integer kyvika;
	private Integer xoritikotita;
	private String marka;
	private String model;
    private float lat;
    private float lng;
    
	public float getLat() {
		return lat;
	}
	public void setLat(float lat) {
		this.lat = lat;
	}
	public float getLng() {
		return lng;
	}
	public void setLng(float lng) {
		this.lng = lng;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getArithmos_kykloforias() {
		return arithmos_kykloforias;
	}
	public void setArithmos_kykloforias(String arithmos_kykloforias) {
		this.arithmos_kykloforias = arithmos_kykloforias;
	}
	public String getEtos_kykloforias() {
		return etos_kykloforias;
	}
	public void setEtos_kykloforias(String etos_kykloforias) {
		this.etos_kykloforias = etos_kykloforias;
	}
	public Integer getKyvika() {
		return kyvika;
	}
	public void setKyvika(Integer kyvika) {
		this.kyvika = kyvika;
	}
	public Integer getXoritikotita() {
		return xoritikotita;
	}
	public void setXoritikotita(Integer xoritikotita) {
		this.xoritikotita = xoritikotita;
	}
	public String getMarka() {
		return marka;
	}
	public void setMarka(String marka) {
		this.marka = marka;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	
	
}
