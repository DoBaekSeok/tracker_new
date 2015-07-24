package com.tracker.service;

import com.tracker.model.dto.Tracking;

public interface TrackingService {

	public void insertTracking(int onEquipNo, double latitude, double longitude);
	
	public Tracking getTracking(int onEquipNo); 
	
}
