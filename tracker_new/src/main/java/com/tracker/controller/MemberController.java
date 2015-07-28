package com.tracker.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tracker.model.dto.Member;
import com.tracker.service.MemberService;

@Controller
@RequestMapping(value = "member")
public class MemberController {
	
	

	private MemberService memberService;
	@Autowired
	@Qualifier("memberService")
	public void setMemberService(MemberService memberService){
		this.memberService = memberService;
	}
	
	
	
	@RequestMapping(value = "register.action", method = RequestMethod.GET)
	public String registerForm() {
		
		return "member/registerform";
	}
	
	@RequestMapping(value="register.action", method = RequestMethod.POST)
	public String register(@ModelAttribute Member member){
		
		memberService.insertMember(member);
		return "redirect:/home.action";
	}

}









