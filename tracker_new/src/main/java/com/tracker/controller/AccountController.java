package com.tracker.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tracker.model.dto.Member;
import com.tracker.service.MemberService;

@Controller
@RequestMapping(value = "account")
public class AccountController {

	private MemberService memberService;
	@Autowired
	@Qualifier("memberService")
	public void setMemberService(MemberService memberSerivce){
		this.memberService = memberSerivce;
	}
	
	@RequestMapping(value = "login.action", method=RequestMethod.GET)
	public String loginForm(){
		
		return "account/loginform"; 
	}
	
	@RequestMapping(value = "login.action", method=RequestMethod.POST)
	@ResponseBody
	public Member login(HttpServletRequest req){

		String id = req.getParameter("id");
		String password = req.getParameter("password");
		
		Member member = memberService.getMemberByIdAndPassword(id, password);
		
		return member;
	}
}
