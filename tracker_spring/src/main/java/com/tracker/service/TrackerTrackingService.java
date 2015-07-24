package com.tracker.service;


import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.tracker.model.dto.Member;
import com.tracker.model.dto.Tracking;
import com.tracker.model.mapper.MemberMapper;
import com.tracker.repository.MemberRepository;
import com.tracker.repository.TrackingRepository;

@Service(value = "trackingService")
public class TrackerTrackingService implements TrackingService{
	
	private TrackingRepository trackingRepository;
	@Autowired
	@Qualifier("trackingRepository")
	public void setTrackingRepository(TrackingRepository trackingRepository){
		this.trackingRepository = trackingRepository;
	}
	

	public void insertTracking(int onEquipNo, double latitude, double longitude){
		HashMap<String, Object> params = new HashMap<String, Object>();	
		params.put("onEquipNo", onEquipNo);
		params.put("latitude", latitude);	
		params.put("longitude", longitude);
		trackingRepository.insertTracking(params);
	}


	public Tracking getTracking(int onEquipNo) {
		Tracking tracking = trackingRepository.getTracking(onEquipNo);
		return tracking;
	}


}