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
	public @ResponseBody Map<String, Object> gpsTracking(int onEquipNo, Model model) {
		
		List<Tracking> tracking = trackingService.getTracking(onEquipNo);
		
		System.out.println("No : " + onEquipNo);
		System.out.println("Lat : " + tracking.get(0).getLatitude());
		System.out.println("Lng : " + tracking.get(0).getLongitude());
		
		Map<String, Object> jsonObject = new HashMap<String, Object>();
		
		jsonObject.put("results", tracking);
		
		return jsonObject;
	}
	
	@RequestMapping(value="gps.action", method = RequestMethod.POST)
	public String gpsReceive(String onEquipNo, String latitude, String longitude){
		
			System.out.println(onEquipNo);
			System.out.println(latitude);
			System.out.println(longitude);
			
		if(Double.parseDouble(latitude) != 0 && Double.parseDouble(longitude) != 0){
			trackingService.insertTracking(
					Integer.parseInt(onEquipNo), 
					Double.parseDouble(latitude), 
					Double.parseDouble(longitude));
		}
		
		return "index";
	}
	
	@RequestMapping(value="regist.action", method = RequestMethod.POST)
	public String regist(String memberId, int equipNo, int serialNumber){
		
		trackingService.registEquipment(memberId, equipNo, serialNumber);
		
		return "index";
	}
	
	@RequestMapping(value="delete.action", method = RequestMethod.POST)
	public String delete(int onEquipNo){
		
		trackingService.deletedOnEquip(onEquipNo);
		
		return "index";
	}
	
	@RequestMapping(value="getserial.action", method = RequestMethod.POST)
	public String getSerialNumber(HttpSession sesson) {
		
		Member loginUser = null;
		if(sesson.getAttribute("loginuser") == null){
			return null;
		}
		loginUser = (Member) sesson.getAttribute("loginuser");
		String memberId = loginUser.getId();
		List<Integer> serialNumbers = trackingService.getEquipSerialByMemberId(memberId);
		
		sesson.setAttribute("serialnumbers", serialNumbers);
		
		return "index";
	}

}




