package com.kh.pillipop.mypage.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.pillipop.mypage.model.mapper.MyPillipopMapper;
import com.kh.pillipop.mypage.model.vo.MyPillipop;

@Service
public class MyPillipopServiceImpl implements MyPillipopService {
	
	@Autowired
	private MyPillipopMapper mapper;
	
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public List<MyPillipop> selectByUNo(int u_no) {
		List<MyPillipop> mypillipop = mapper.selectByUNo(u_no);
		return mypillipop;
	}
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int insert(MyPillipop myPillipop) {
		return mapper.insert(myPillipop);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int delete(Map<String, String> map) {
		return mapper.delete(map);
	}

//	@Override
//	@Transactional(rollbackFor = Exception.class)
//	public int update(MyPillipop mypillipop) {
//		return mapper.update(mypillipop);
//	}
}
