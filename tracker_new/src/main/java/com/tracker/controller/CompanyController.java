package com.tracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("company")
public class CompanyController {
	
	@RequestMapping(value = "company.action", method = RequestMethod.GET)
	public String home() {
		
		return "company/company";
	}
}