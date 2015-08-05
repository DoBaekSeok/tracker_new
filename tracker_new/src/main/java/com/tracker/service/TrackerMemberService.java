package com.tracker.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.tracker.model.dto.Member;
import com.tracker.model.mapper.MemberMapper;
import com.tracker.repository.MemberRepository;

@Service(value = "memberService")
public class TrackerMemberService implements MemberService{
	
	private MemberRepository memberRepository;
	@Autowired
	@Qualifier("memberRepository")
	public void setMemberRepository(MemberRepository memberRepository){
		this.memberRepository = memberRepository;
	}
	
	public void insertMember(Member member){
		memberRepository.insertMember(member);
	}

	@Override
	public void updateMember(Member member) {
		memberRepository.updateMember(member);
		
	}

	@Override
	public void deleteMember(String id) {
		memberRepository.deleteMember(id);
	}

	@Override
	public List<Member> getMemberList() {
		List<Member> members = memberRepository.getMemberList();
		return members;
	}

	@Override
	public Member getMemberById(String id) {
		Member member = memberRepository.getMemberById(id);
		return member;
	}

	@Override
	public Member getMemberByIdAndPasswd(String id, String password) {
		Member member = memberRepository.getMemberByIdAndPasswd(id, password);
		
		return member;
	}

}