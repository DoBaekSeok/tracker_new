package com.tracker.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tracker.model.dto.Equipment;
import com.tracker.service.EquipmentService;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@Autowired
	private EquipmentService equipmentService;
	
	@RequestMapping(value = { "/", "home.action" }, method = RequestMethod.GET)
	public ModelAndView home() {

		List<Equipment> equipments = equipmentService.processShowEquipments();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		mav.addObject("equipments", equipments);
				
		return mav;
	}
}