package com.tracker.service;

import java.util.List;

import com.tracker.model.dto.Member;

public interface MemberService {

    void insertMember(Member member);
	
	void updateMember(Member member);
	
	void deleteMember(Member member);
	
	List<Member> getMemberList();
	
	Member getMemberById(String id);
	
	Member getMemberByIdAndPassword(String id, String password);
}
