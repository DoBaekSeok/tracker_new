package com.tracker.service;

import java.util.List;

import com.tracker.model.dto.Tracking;

public interface TrackingService {

	public void insertTracking(int onEquipNo, double latitude, double longitude);
	
	public List<Tracking> getTracking(int onEquipNo); 
	
}
