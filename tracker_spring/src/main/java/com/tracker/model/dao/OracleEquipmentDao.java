package com.tracker.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.tracker.model.dto.Equipment;
import com.tracker.model.mapper.EquipmentMapper;

@Repository(value = "equipmentDao")
public class OracleEquipmentDao implements EquipmentDao {

	private EquipmentMapper equipmentMapper;
	@Autowired
	@Qualifier("equipmentMapper")
	public void setEquipmentMapper(EquipmentMapper equipmentMapper){
		this.equipmentMapper = equipmentMapper;
	}
	
	public List<Equipment> getShowEquipmentList() {		
		
		List<Equipment> equipments = equipmentMapper.getShowEquipmentList();				
		
		return equipments;
		
	}
}
