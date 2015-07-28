package com.tracker.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.tracker.model.dto.Equipment;
import com.tracker.model.mapper.EquipmentMapper;

@Repository
public class OracleEquipmentRepository implements EquipmentRepository {

	private EquipmentMapper equipmentMapper;
	@Autowired
	@Qualifier("equipmentMapper")
	public void setEquipmentMapper(EquipmentMapper equipmentMapper) {
		this.equipmentMapper = equipmentMapper;
	}
	
	public void insertEquipment(){
		
		// 데이터베이스에 장비 데이터 저장
		
	}

	@Override
	public List<Equipment> getShowEquipmentList() {
		
		// 데이터베이스에서 장비 리스트 조회
		List<Equipment> equipments = equipmentMapper.getShowEquipmentList();
		
		return equipments;
		
	}
}