package com.tracker.service;


import java.util.HashMap;
import java.util.List;

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


	public List<Tracking> getTracking(int onEquipNo) {
		List<Tracking> tracking = trackingRepository.getTracking(onEquipNo);
		return tracking;
	}

	public void registEquipment(String memberId, int equipNo, int serialNumber){
		HashMap<String, Object> params = new HashMap<String, Object>();	
		params.put("memberId", memberId);
		params.put("equipNo", equipNo);
		params.put("serialNumber", serialNumber);
		trackingRepository.registEquipment(params);
	}
	
	public List<Integer> getEquipSerialByMemberId(String memberId){
		List<Integer> serialNumber = trackingRepository.getEquipSerialByMemberId(memberId);
		return serialNumber;
	}
	
	public void deletedOnEquip(int onEquipNo){
		trackingRepository.deletedOnEquip(onEquipNo);
	}

}