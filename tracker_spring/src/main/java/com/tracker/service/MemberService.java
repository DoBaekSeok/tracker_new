package com.tracker.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tracker.model.dto.Member;
import com.tracker.repository.MemberRepository;

//@Component
@Service
public class MemberService {
	
	@Autowired
	private MemberRepository memberRepository;

	public void insertMember(Member member){
		memberRepository.insertMember(member);
	}

}