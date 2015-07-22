package com.tracker.repository;

import java.util.List;

import com.tracker.model.dto.Member;

public interface MemberRepository {

	void insertMember(Member member);
	
	void updateMember(Member member);
	
	void deleteMember(Member member);
	
	List<Member> getMemberList();
	
	// 아이디 중복체크
	Member getMemberById(String memberId);
	
	//로그인
	Member getMwmberByIdAndPasswd(String id, String passwd);
}
