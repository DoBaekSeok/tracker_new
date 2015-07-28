package com.tracker.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tracker.model.dto.Equipment;
import com.tracker.service.EquipmentService;

@Controller
@RequestMapping(value = "manageequipment")
public class EquipmentController {	
	
	@Autowired
	private EquipmentService equipmentService;
		
	@RequestMapping(value = "equipmentlist.action", method = RequestMethod.GET)
	public String getEquipmentList() {
		
		return "manageequipment/manageequipment";
		
	}
	
	@RequestMapping("equipmentlistajax.action")
	@ResponseBody
	public List<Equipment> getEquipmentListAjax() {
		
		List<Equipment> equipments = equipmentService.processShowEquipments();
		
		return equipments;
		
	}
	
}