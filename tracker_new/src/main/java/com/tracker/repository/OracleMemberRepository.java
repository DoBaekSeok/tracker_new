package com.tracker.repository;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.tracker.model.dto.Member;
import com.tracker.model.mapper.MemberMapper;

@Repository(value="memberRepository")
public class OracleMemberRepository implements MemberRepository {

	
	private MemberMapper memberMapper;
	@Autowired
	@Qualifier("memberMapper")
	public void setMemberMapper(MemberMapper memberMapper){
		this.memberMapper = memberMapper;
	}
	
	@Override
	public void insertMember(Member member) {
		memberMapper.insertMember(member);
	}

	@Override
	public void updateMember(Member member) {
		memberMapper.updateMember(member);
		
	}

	@Override
	public void deleteMember(Member member) {
		memberMapper.deleteMember(member);
	}

	@Override
	public List<Member> getMemberList() {
		List<Member> members = memberMapper.getMemberList();
		return members;
	}


	// 아이디 중복체크 or 수정화면
	@Override
	public Member getMemberById(String id) {
		Member member = memberMapper.getMemberById(id);
		return member;
	}

	@Override
	public Member getMemberByIdAndPasswd(String id, String password) {
	
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);
		params.put("password", password);
		Member member = memberMapper.getMemberByIdAndPasswd(params);
		
		return member;
		
	}
	
	
	
	
	
	
	
	
	
	
}