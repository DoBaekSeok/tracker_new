package com.tracker.model.dto;

import java.io.Serializable;

public class EquipPhoto implements Serializable{
	
	private int EquipPhotoNo;
	private String SavedFileName;
	private String UserFileName;
	private int EquipPhotoDeleted;
	private int EquipNo;
	
	
	public int getEquipPhotoNo() {
		return EquipPhotoNo;
	}
	public void setEquipPhotoNo(int equipPhotoNo) {
		EquipPhotoNo = equipPhotoNo;
	}
	public String getSavedFileName() {
		return SavedFileName;
	}
	public void setSavedFileName(String savedFileName) {
		SavedFileName = savedFileName;
	}
	public String getUserFileName() {
		return UserFileName;
	}
	public void setUserFileName(String userFileName) {
		UserFileName = userFileName;
	}
	public int getEquipPhotoDeleted() {
		return EquipPhotoDeleted;
	}
	public void setEquipPhotoDeleted(int equipPhotoDeleted) {
		EquipPhotoDeleted = equipPhotoDeleted;
	}
	public int getEquipNo() {
		return EquipNo;
	}
	public void setEquipNo(int equipNo) {
		EquipNo = equipNo;
	}
	
	
	
	
	

}
