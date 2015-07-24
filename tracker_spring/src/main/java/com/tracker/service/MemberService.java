package com.tracker.service;

import com.tracker.model.dto.Member;

public interface MemberService {

	public void insertMember(Member member);
	
	Member getMemberById(String id);
	
	Member getMemberByIdAndPassword(String id, String password);
}
