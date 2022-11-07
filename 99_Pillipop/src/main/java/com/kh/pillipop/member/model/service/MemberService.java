package com.kh.pillipop.member.model.service;

import com.kh.pillipop.member.model.vo.Member;

public interface MemberService {
	Member login(String id, String pwd);

	int save(Member member);

	boolean validate(String userId);

	Member selectMember(String id); //프로필 조회
	
	int updateMember(Member member); //프로필 정보 수정

	int deleteMember(int no); //탈퇴하기

	int updatePwd(Member loginMember, String userPwd); //비밀번호 변경
}
