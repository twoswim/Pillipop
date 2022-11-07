package com.kh.pillipop.mypage.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.kh.pillipop.mypage.model.vo.MyPillipop;

//@Mapper : DAO 없이 자동으로 Mapper 객체를 생성해주는 어노테이션. 별도의 DAO 작성이 필요 없어진다.
//※ 주의 : mapper의 id와 동일한 메소드 네이밍을 맞춰야한다.
@Mapper
public interface MyPillipopMapper {
	List<MyPillipop> selectByUNo(int u_no); // @Param : 파라메터를 알려주는 어노테이션, 없어도 호환잘된다.
	int insert(MyPillipop myPillipop);
//	int update(MyPillipop myPillipop);
	int delete(Map<String, String> map);
}
