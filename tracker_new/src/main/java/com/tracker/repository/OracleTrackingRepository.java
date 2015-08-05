package com.tracker.repository;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.tracker.model.dto.Member;
import com.tracker.model.dto.Tracking;
import com.tracker.model.mapper.MemberMapper;
import com.tracker.model.mapper.TrackingMapper;

@Repository(value="trackingRepository")
public class OracleTrackingRepository implements TrackingRepository {

	
	private TrackingMapper trackingMapper;
	@Autowired
	@Qualifier("trackingMapper")
	public void setTrackingMapper(TrackingMapper trackingMapper){
		this.trackingMapper = trackingMapper;
	}

	@Override
	public void insertTracking(HashMap<String, Object> params) {
		trackingMapper.insertTracking(params);	
	}

	@Override
	public List<Tracking> getTracking(int serialNumber) {
		List<Tracking> tracking = trackingMapper.getTracking(serialNumber);
		return tracking;
	}
	
	public void registEquipment(HashMap<String, Object> params){
		trackingMapper.registEquipment(params);
	}
	
	public List<Integer> getEquipSerialByMemberId(String memberId){
		List<Integer> serialNumber = trackingMapper.getEquipSerialByMemberId(memberId);
		return serialNumber;
	}
	
	public void deletedOnEquip(int serialNumber){
		trackingMapper.deletedOnEquip(serialNumber);
	}
	
}