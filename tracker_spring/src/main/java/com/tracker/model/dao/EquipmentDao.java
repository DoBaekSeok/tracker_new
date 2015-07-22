package com.tracker.model.dao;

import java.util.List;

import com.tracker.model.dto.Equipment;


public interface EquipmentDao {
	
	List<Equipment> getShowEquipmentList();
	
}