package com.tracker.model.dto;

import java.io.Serializable;

public class Equipment implements Serializable{
	private static final long serialVersionUID = 1L;
	private int equipNo; 
	private String equipName; 
	private String modelName; 
	private int equipPrice; 
	private String equipContent; 
	private String equipDeleted;
	private String equipPhoto;
	
	public Equipment(){}

	public int getEquipNo() {
		return equipNo;
	}

	public void setEquipNo(int equipNo) {
		this.equipNo = equipNo;
	}

	public String getEquipName() {
		return equipName;
	}

	public void setEquipName(String equipName) {
		this.equipName = equipName;
	}

	public String getModelName() {
		return modelName;
	}

	public void setModelName(String modelName) {
		this.modelName = modelName;
	}

	public int getEquipPrice() {
		return equipPrice;
	}

	public void setEquipPrice(int equipPrice) {
		this.equipPrice = equipPrice;
	}

	public String getEquipContent() {
		return equipContent;
	}

	public void setEquipContent(String equipContent) {
		this.equipContent = equipContent;
	}

	public String getEquipDeleted() {
		return equipDeleted;
	}

	public void setEquipDeleted(String equipDeleted) {
		this.equipDeleted = equipDeleted;
	}

	public String getEquipPhoto() {
		return equipPhoto;
	}

	public void setEquipPhoto(String equipPhoto) {
		this.equipPhoto = equipPhoto;
	}


	
}