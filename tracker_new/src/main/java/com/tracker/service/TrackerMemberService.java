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
		System.out.println("id 값 넘어왔니 서비스" +id);
		Member member = memberRepository.getMemberByIdAndPasswd(id, password);
		
		if(member != null){
			System.out.println("서비스단입니다" + member.getId());
		}
		return member;
	}

}