package com.itrix.Model;

import java.sql.Timestamp;

public class AnimalModel {

	private int animalId;
	private int farmId;
	private String electronicId;
	private String certifiedId;
	private char activeStatus;	
	private Timestamp createDate;
	private Timestamp updateDate;	
	private String animalName;
	private String gender;
	private String tagId;
	private String breedType;
	
	
	
	public String getAnimalName() {
		return animalName;
	}
	public void setAnimalName(String animalName) {
		this.animalName = animalName;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTagId() {
		return tagId;
	}
	public void setTagId(String tagId) {
		this.tagId = tagId;
	}
	public String getBreedType() {
		return breedType;
	}
	public void setBreedType(String breedType) {
		this.breedType = breedType;
	}
	
	
	
	
	
	
	
	
	
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
	
	public String getElectronicId() {
		return electronicId;
	}
	public void setElectronicId(String electronicId) {
		this.electronicId = electronicId;
	}
	public String getCertifiedId() {
		return certifiedId;
	}
	public void setCertifiedId(String certifiedId) {
		this.certifiedId = certifiedId;
	}
	public char getActiveStatus() {
		return activeStatus;
	}
	public void setActiveStatus(char activeStatus) {
		this.activeStatus = activeStatus;
	}
	public Timestamp getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}
	public Timestamp getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Timestamp updateDate) {
		this.updateDate = updateDate;
	}



}
