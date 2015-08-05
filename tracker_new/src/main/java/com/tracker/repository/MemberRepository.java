package com.tracker.repository;

import java.util.List;

import com.tracker.model.dto.Member;

public interface MemberRepository {

	void insertMember(Member member);
	
	void updateMember(Member member);
	
	void deleteMember(String id);
	
	List<Member> getMemberList();
	
	// 아이디 중복체크
	Member getMemberById(String id);
	
	//로그인
	Member getMemberByIdAndPasswd(String id, String password);
}
