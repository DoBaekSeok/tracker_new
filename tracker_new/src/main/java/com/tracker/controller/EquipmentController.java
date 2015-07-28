package com.tracker.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tracker.service.EquipmentService;

@Controller
@RequestMapping(value = "equipment")
public class EquipmentController {	
	
	@Autowired
	private EquipmentService equipmentService;
		
	@RequestMapping(value = "equipment.action", method = RequestMethod.GET)
	public String registerForm() {
		
		return "equipment";
		
	}
	
}