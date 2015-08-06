package com.tracker.model.mapper;

import java.util.List;

import com.tracker.model.dto.EquipPhoto;
import com.tracker.model.dto.Equipment;


public interface EquipmentMapper {


	void insertEquipment(Equipment equipment);
	
	void insertEquipmentPhoto(EquipPhoto equipphoto);
	
	void deleteEquipment(int equipment);
	
	void updateEquipment(Equipment equipments);
	
	List<Equipment> getEquipment();
	
}