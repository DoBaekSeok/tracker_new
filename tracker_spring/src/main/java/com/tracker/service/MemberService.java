package com.tracker.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.tracker.model.dto.Member;
import com.tracker.model.mapper.MemberMapper;
import com.tracker.repository.MemberRepository;

@Service
public class MemberService {
	
	private MemberRepository memberRepository;
	@Autowired
	@Qualifier(value = "memberRepository")
	public void setMemberRepository(MemberRepository memberRepository){
		this.memberRepository = memberRepository;
	}
	
	public void insertMember(Member member){
		memberRepository.insertMember(member);
	}

}