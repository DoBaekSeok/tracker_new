package com.tracker.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tracker.model.dto.Equipment;
import com.tracker.service.EquipmentService;

@Controller
@RequestMapping(value = "manageequipment")
public class EquipmentController extends HttpServlet{	
	
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
	public void getEquipmentedit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String oper = req.getParameter("oper");
		
		if(oper.equals("add")){			
			System.out.println("111111111111111111");
			Equipment equipment = new Equipment();
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
			
			System.out.println("222222222222222222222");
			Equipment equipment = new Equipment();
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
			
		}else{
			
			
		}
		
	

	
	}
}