package com.tracker.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.tracker.model.dto.Member;
import com.tracker.model.mapper.MemberMapper;

@Repository(value="memberDao")
public class OracleMemberDao implements MemberDao{

	
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
	public Member getMemberById(String memberId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member getMwmberByIdAndPasswd(String id, String passwd) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
}
