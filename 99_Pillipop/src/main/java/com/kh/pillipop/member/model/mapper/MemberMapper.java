package com.kh.pillipop.member.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.kh.pillipop.member.model.vo.Member;

// @Mapper : DAO 없이 자동으로 Mapper 객체를 생성해주는 어노테이션. 별도의 DAO 작성이 필요 없어진다.
// ※ 주의 : mapper의 id와 동일한 메소드 네이밍을 맞춰야한다.
@Mapper
public interface MemberMapper {
	int selectCount();
	List<Member> selectAll();
	Member selectMember(@Param("u_id") String u_id); // @Param : 파라메터를 알려주는 어노테이션, 없어도 호환잘된다.
	int insertMember(Member member);
	int updateMember(Member member);
	int deleteMember(@Param("u_no") int u_no); //탈퇴하기
	int updatePwd(Map<String, String> map); //비밀번호 변경
	
}
