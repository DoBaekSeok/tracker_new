package com.tracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tracker.model.dto.Equipment;
import com.tracker.repository.EquipmentRepository;

//@Component
@Service
public class EquipmentService {
	
	@Autowired
	private EquipmentRepository equipmentRepository;
	
	public List<Equipment> processShowEquipments(){

		// 장비 리스트 조회
		List<Equipment> equipments = equipmentRepository.getShowEquipmentList();
		
		return equipments;

	}
	
	public void AddEquipment(Equipment equipment){
		
		equipmentRepository.insertEquipment(equipment);
		
	}
	
	public void EditEquipment(Equipment equipment){
		
		equipmentRepository.updateEquipment(equipment);
		
	}
	
	public void DeleteEquipment(int equipment){
		
		equipmentRepository.deleteEquipment(equipment);
		
	}

}