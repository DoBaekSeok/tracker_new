package com.tracker.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.tracker.model.dto.Member;
import com.tracker.model.dto.Tracking;

public interface TrackingMapper {

	void insertTracking(HashMap<String, Object> params);
	
	List<Tracking> getTracking(int serialNumber);
	
	void registEquipment(HashMap<String, Object> params);
	
	List<Integer> getEquipSerialByMemberId(String memberId);
	
	void deletedOnEquip(int serialNumber);
}
