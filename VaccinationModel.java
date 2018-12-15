package com.itrix.Model;

import java.sql.Date;

public class VaccinationModel {
	private int animalId;
	private int farmId;
	private int vacciId;
	private String vacciName;
	private Date vacciDate;
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
	public int getVacciId() {
		return vacciId;
	}
	public void setVacciId(int vacciId) {
		this.vacciId = vacciId;
	}
	public String getVacciName() {
		return vacciName;
	}
	public void setVacciName(String vacciName) {
		this.vacciName = vacciName;
	}
	public Date getVacciDate() {
		return vacciDate;
	}
	public void setVacciDate(Date vacciDate) {
		this.vacciDate = vacciDate;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}

}
