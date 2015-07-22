package com.tracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tracker.model.dto.Equipment;
import com.tracker.repository.OracleEquipmentRepository;

//@Component
@Service
public class EquipmentService {
	
	@Autowired
	private OracleEquipmentRepository equipmentRepository;
	
	public List<Equipment> processShowEquipments(){

		// 장비 리스트 조회
		List<Equipment> equipments = equipmentRepository.selectEquipment();
		
		return equipments;

	}

}