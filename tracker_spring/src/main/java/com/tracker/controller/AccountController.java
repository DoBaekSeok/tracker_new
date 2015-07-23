package com.tracker.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "account")
public class AccountController {

	@RequestMapping(value = "login.action", method=RequestMethod.GET)
	public String loginForm(){
		
		return "account/loginform"; 
	}
	
	@RequestMapping(value = "login.action", method=RequestMethod.POST)
	public String login(HttpServletRequest req){
		
		return "redirect:/home.action";
	}
}
