package com.tracker.model.dto;

import java.util.Date;

public class Tracking {
	
	public int trackingNo;
	public int onEquipNo;
	public double latitude;
	public double longitude;
	public Date savedTime;
	public int ranking;
	
	public int getRanking() {
		return ranking;
	}
	public void setRanking(int ranking) {
		this.ranking = ranking;
	}
	public int getTrackingNo() {
		return trackingNo;
	}
	public void setTrackingNo(int trackingNo) {
		this.trackingNo = trackingNo;
	}
	public int getOnEquipNo() {
		return onEquipNo;
	}
	public void setOnEquipNo(int onEquipNo) {
		this.onEquipNo = onEquipNo;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public Date getSavedTime() {
		return savedTime;
	}
	public void setSavedTime(Date savedTime) {
		this.savedTime = savedTime;
	}
	
	
}
