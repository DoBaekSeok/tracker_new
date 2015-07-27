package com.tracker.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.tracker.model.dto.Member;

public interface MemberMapper {

	void insertMember(Member member);
	
	void updateMember(Member member);
	
	void deleteMember(Member member);
	
	List<Member> getMemberList();
	
	// 아이디 중복체크
	Member getMemberById(String id);
	
	//로그인
	Member getMemberByIdAndPasswd(HashMap<String, String> params);
	
	Member getMemberByIdAndPasswd2(HashMap<String, Object> params);
}
