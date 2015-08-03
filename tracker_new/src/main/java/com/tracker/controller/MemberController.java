package com.tracker.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	
	@RequestMapping(value = "list.action", method = RequestMethod.GET)
	public ModelAndView memberList() {
		
		List<Member> members = memberService.getMemberList();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/list");
		mav.addObject("members", members);
		
		return mav;
	}
	
	@RequestMapping(value="register.action", method = RequestMethod.POST)
	public String register(@ModelAttribute Member member){
		
		if(member.getId() != null){
			memberService.insertMember(member);
		}
		
		return "redirect:/home.action";
	}
	
	@RequestMapping(value = "view.action", method = RequestMethod.GET)
	public ModelAndView view(@RequestParam("id") String id) {
		
		Member member = memberService.getMemberById(id);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/view");
		mav.addObject("member", member);
		
		return mav;
		
	}
	
	@RequestMapping(value = "edit.action", method = RequestMethod.POST)
	public String edit(@ModelAttribute Member member){
		
		if(member.getId() != null){
			memberService.updateMember(member);
		}
	
		
		return "redirect:/home.action";
		
	}

}









