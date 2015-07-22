package com.tracker.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tracker.common.Util;
import com.tracker.model.dto.Member;
import com.tracker.repository.MemberRepository;

@Controller
@RequestMapping(value = "member")
public class MemberController {
	
	private MemberRepository memberRepository;
	@RequestMapping(value = "register.action", method = RequestMethod.GET)
	public String registerForm() {
		
		return "member/registerform";
	}
	
	@RequestMapping(value="register.action", method = RequestMethod.POST)
	public String register(@ModelAttribute Member member){
		
		String passwd = Util.getHashedString(member.getPasswd(), "SHA-1");
		member.setPasswd(passwd);
		
		memberRepository.insertMember(member);
		
		return "redirect:/home.action";
	}

}









