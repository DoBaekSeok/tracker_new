package com.tracker.controller;


import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.tracker.model.dto.EquipPhoto;
import com.tracker.model.dto.Equipment;
import com.tracker.service.EquipmentService;

@Controller
@RequestMapping(value = "equipment")
public class EquipmentController{	
	
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
	
	@RequestMapping("equipmenteditajax.action")
	public void getEquipmentedit(HttpServletRequest req, HttpServletResponse resp) {

		
		Equipment equipment = new Equipment();
		String oper = req.getParameter("oper");
		
		if(oper.equals("add")){			

			String equipName = req.getParameter("equipName");
	        String modelName = req.getParameter("modelName");
	        int equipPrice = Integer.parseInt(req.getParameter("equipPrice"));
	        String equipContent = req.getParameter("equipContent");  


			equipment.setEquipName(equipName);
			equipment.setModelName(modelName);
			equipment.setEquipPrice(equipPrice);
			equipment.setEquipContent(equipContent);

			equipmentService.AddEquipment(equipment);


		}else if(oper.equals("edit")){
			

		
			int equipNo = Integer.parseInt(req.getParameter("equipNo"));
			String equipName = req.getParameter("equipName");
	        String modelName = req.getParameter("modelName");
	        int equipPrice = Integer.parseInt(req.getParameter("equipPrice"));
	        String equipContent = req.getParameter("equipContent");
			
	        equipment.setEquipNo(equipNo);
	    	equipment.setEquipName(equipName);
			equipment.setModelName(modelName);
			equipment.setEquipPrice(equipPrice);
			equipment.setEquipContent(equipContent);

			equipmentService.EditEquipment(equipment);
			
		}
		

	}
}