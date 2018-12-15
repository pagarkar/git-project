package com.itrix.Model;

import java.util.Date;;

public class WeightModel {

	private int animalId;
	private int farmId;
	private int wtId;
	private double weight;
	private Date wtDate;
	private String note;
	
	public int getAnimalId() {
		return animalId;
	}
	public void setAnimalId(int animalId) {
		this.animalId = animalId;
	}
	public int getFarmId() {
		return farmId;
	}
	public void setFarmId(int farmId) {
		this.farmId = farmId;
	}
	public int getWtId() {
		return wtId;
	}
	public void setWtId(int wtId) {
		this.wtId = wtId;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public Date getWtDate() {
		return wtDate;
	}
	public void setWtDate(Date wtDate) {
		this.wtDate = wtDate;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
	
}
