package com.tracker.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.tracker.model.dao.EquipmentDao;
import com.tracker.model.dto.Equipment;

@Repository
public class EquipmentRepository {

	private EquipmentDao equipmentDao;
	@Autowired
	@Qualifier("equipmentDao")
	public void setEquipmentDao(EquipmentDao equipmentDao) {
		this.equipmentDao = equipmentDao;
	}
	
	public void insertEquipment(){
		
		// 데이터베이스에 장비 데이터 저장
		
	}
	
	public List<Equipment> selectEquipment(){
		
		// 데이터베이스에서 장비 리스트 조회
		List<Equipment> equipments = equipmentDao.getShowEquipmentList();
		
		return equipments;
		
	}
}