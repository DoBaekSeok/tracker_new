package com.tracker.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.google.gson.Gson;
import com.tracker.model.dto.Equipment;
import com.tracker.model.dto.Member;
import com.tracker.model.dto.Tracking;
import com.tracker.service.TrackerMemberService;
import com.tracker.service.TrackerTrackingService;
import com.tracker.service.TrackingService;

@Controller
@RequestMapping(value = "tracking")
public class TrackingController {
	
	private TrackingService trackingService;
	@Autowired
	@Qualifier("trackingService")
	public void setTrackingService(TrackerTrackingService trackingService){
		this.trackingService = trackingService;
	}
	
	@RequestMapping(value = "gps.action", method = RequestMethod.GET)
	public @ResponseBody Map<String, Object> gpsTracking(int serialNumber, Model model) {
		
		List<Tracking> tracking = trackingService.getTracking(serialNumber);

		System.out.println("No : " + serialNumber);
		System.out.println("Lat : " + tracking.get(0).getLatitude());
		System.out.println("Lng : " + tracking.get(0).getLongitude());
		
		Map<String, Object> jsonObject = new HashMap<String, Object>();
		
		jsonObject.put("results", tracking);
		
		return jsonObject;
	}
	
	@RequestMapping(value="gps.action", method = RequestMethod.POST)
	public String gpsReceive(String serialNumber, String latitude, String longitude){
		
			System.out.println(serialNumber);
			System.out.println(latitude);
			System.out.println(longitude);
			
		if(Double.parseDouble(latitude) != 0 && Double.parseDouble(longitude) != 0){
			trackingService.insertTracking(
					Integer.parseInt(serialNumber), 
					Double.parseDouble(latitude), 
					Double.parseDouble(longitude));
		}
		
		return "index";
	}
	
	@RequestMapping(value="regist.action", method = RequestMethod.GET)
	public ModelAndView registform(HttpSession session){
		
		Member loginUser = (Member)session.getAttribute("loginuser");
		String memberId = loginUser.getId();
		ModelAndView mov = new ModelAndView();
		mov.setViewName("gpstracker/regist");
		mov.addObject("id", memberId);
		
		return mov;
	}
	
	@RequestMapping(value="regist.action", method = RequestMethod.POST)
	public String regist(String memberId, int equipNo, int serialNumber){
		
		trackingService.registEquipment(memberId, equipNo, serialNumber);
		
		return "index";
	}
	
	@RequestMapping(value="delete.action", method = RequestMethod.POST)
	public String delete(int serialNumber){
		
		trackingService.deletedOnEquip(serialNumber);
		
		return "index";
	}	
	
	@RequestMapping("getserial.action")
	@ResponseBody
	public List<Integer> getEquipmentListAjax(HttpSession session) {
		
		Member loginUser = null;
		if(session.getAttribute("loginuser") == null){
			return null;
		}
		
		loginUser = (Member) session.getAttribute("loginuser");
		String memberId = loginUser.getId();
		List<Integer> serialNumbers = trackingService.getEquipSerialByMemberId(memberId);
						
		return serialNumbers;
		
	}

}




