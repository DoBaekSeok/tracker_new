package com.tracker.repository;

import java.util.List;

import com.tracker.model.dto.EquipPhoto;
import com.tracker.model.dto.Equipment;


public interface EquipmentRepository {
	
	List<Equipment> getEquipment();
	
	void insertEquipment(Equipment equipment);
	
	void insertEquipmentPhoto(EquipPhoto equipphoto);
	
	void deleteEquipment(int equipment);
	
	void updateEquipment(Equipment equipment);
	
}