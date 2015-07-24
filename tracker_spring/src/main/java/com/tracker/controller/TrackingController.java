package com.tracker.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
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
	public String tracking(int onEquipNo, HttpServletRequest req, HttpServletResponse resp) {
		
		Tracking tracking = trackingService.getTracking(onEquipNo);
		
		System.out.println("No : " + onEquipNo);
		System.out.println(tracking);
		System.out.println("Lat : " + tracking.getLatitude());
		System.out.println("Lng : " + tracking.getLongitude());
		
		req.setAttribute("onEquipNo", onEquipNo);
		req.setAttribute("latitude", tracking.getLatitude());
		req.setAttribute("longitude", tracking.getLongitude());
		
		double latitude = tracking.getLatitude();
		double longitude = tracking.getLongitude();
		
		HashMap<String, Double> location = new HashMap<String, Double>();
		location.put("latitude", latitude);
		location.put("longitude", longitude);
		
		Gson gson = new Gson();
		
		String json = gson.toJson(location);
		System.out.println(json);
		resp.setContentType("application/json");
		resp.setCharacterEncoding("UTF-8");
		try {
			resp.getWriter().write(json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "index";
	}
	
	@RequestMapping(value="gps.action", method = RequestMethod.POST)
	public String register(@ModelAttribute Tracking tracking){
		
			System.out.println(tracking.onEquipNo);
			System.out.println(tracking.latitude);
			System.out.println(tracking.longitude);
			
		if(tracking.latitude != 0 && tracking.longitude != 0){
			trackingService.insertTracking(tracking.onEquipNo, tracking.latitude, tracking.longitude);
		}
		
		return "index";
	}

}









