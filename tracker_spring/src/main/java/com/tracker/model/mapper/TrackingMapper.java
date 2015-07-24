package com.tracker.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.tracker.model.dto.Member;
import com.tracker.model.dto.Tracking;

public interface TrackingMapper {

	void insertTracking(HashMap<String, Object> params);
	
	Tracking getTracking(int onEquipNo);

}
