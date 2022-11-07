package com.kh.pillipop.news.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.pillipop.news.model.mapper.NewsMapper;
import com.kh.pillipop.news.model.vo.News;


@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsMapper mapper;
	

//	전체 목록 조회
	@Override
	public List<News> selectAll() {
		return mapper.selectAll();
	}
	
	// 새로운 전체 목록 조회
	@Override
	public List<News> getPharmList(Map<String, String> searchMap) {
		
		return mapper.selectNewsList(searchMap);
	}
	
//	목록 상세 조회
//	@Override
//	public News selectByNo(int st_seqNo) {
//		News News = mapper.selectByNo(st_seqNo);
//		return News;
//	}
	
//	목록 상세 조회
	@Override
	public News selectByNo(int st_seqNo) {
		return mapper.selectByNo(st_seqNo);
	}
	
//	@Override
//	public int selectNewsCount() {
//		return mapper.selectCount();
//	}

}
