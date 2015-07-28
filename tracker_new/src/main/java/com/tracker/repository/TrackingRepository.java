package com.tracker.repository;

import java.util.HashMap;
import java.util.List;

import com.tracker.model.dto.Member;
import com.tracker.model.dto.Tracking;

public interface TrackingRepository {

	void insertTracking(HashMap<String, Object> params);
	
	Tracking getTracking(int onEquipNo);

}
