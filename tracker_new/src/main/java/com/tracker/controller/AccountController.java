package com.tracker.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
/*	@RequestMapping(value = "login.action", method=RequestMethod.POST)
	@ResponseBody
	public Member login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		Member member = null;
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		
		if(id == null || id.length() == 0 || password == null || password.length() == 0){
			return member;
		}
		
		member = memberService.getMemberByIdAndPasswd(id, password);
		
		resp.setContentType("text/plain;charset=utf-8");
		PrintWriter writer = resp.getWriter();
		
		//로그인 session 처리 
		if(member != null){
			req.getSession().setAttribute("loginuser", member);
			writer.print("success");
		}else{
			writer.print("fail");
		}
		
		return member;
	}*/
	
	@RequestMapping(value = "login.action", method=RequestMethod.POST)
	public void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		Member member = null;
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		
		member = memberService.getMemberByIdAndPasswd(id, password);
		
		resp.setContentType("text/plain;charset=utf-8");
		PrintWriter writer = resp.getWriter();
		
		//로그인 session 처리 
		if(member != null){
			HttpSession session = req.getSession();
			session.setAttribute("loginuser", member);//로그인 처리
			writer.print("success");
		}else{
			writer.print("fail");
		}
	
	}
}
