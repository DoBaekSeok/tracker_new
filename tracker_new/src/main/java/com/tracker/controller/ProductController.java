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
@RequestMapping("product")
public class ProductController {
	
	@Autowired
	private EquipmentService equipmentService;
	
	@RequestMapping(value = "product.action", method = RequestMethod.GET)
	public ModelAndView getProductList() {

		List<Equipment> equipments = equipmentService.processShowEquipments();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("products/showequipmentlist");
		mav.addObject("equipments", equipments);
				
		return mav;
	}
}