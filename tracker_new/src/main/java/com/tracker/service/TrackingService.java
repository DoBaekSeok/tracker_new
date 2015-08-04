package com.tracker.service;

import java.util.HashMap;
import java.util.List;

import com.tracker.model.dto.Tracking;

public interface TrackingService {

	public void insertTracking(int serialNumber, double latitude, double longitude);
	
	public List<Tracking> getTracking(int serialNumber); 
	
	public void registEquipment(String memberId, int equipNo, int serialNumber);
	
	public List<Integer> getEquipSerialByMemberId(String memberId);
	
	public void deletedOnEquip(int serialNumber); 
	
}
