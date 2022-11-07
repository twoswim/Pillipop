package com.kh.pillipop.mypage.model.service;

import java.util.List;
import java.util.Map;

import com.kh.pillipop.mypage.model.vo.MyPillipop;


public interface MyPillipopService {
	
	List<MyPillipop> selectByUNo(int u_no);
	
	int insert(MyPillipop mypillipop);
	
	int delete(Map<String, String> map);
	
//	int update(MyPillipop mypillipop);
}
