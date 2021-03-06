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
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteMember(Member member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Member> getMemberList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member getMemberById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member getMemberByIdAndPasswd(String id, String password) {
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);
		params.put("password", password);
		Member member = memberMapper.getMemberByIdAndPasswd(params);
		
		
		System.out.println("왜 값을 못 가져 오니 " + params + "/" + member.getId());
		
		
		return member;
		
	}
	
	
	
	
	
	
	
	
	
	
}