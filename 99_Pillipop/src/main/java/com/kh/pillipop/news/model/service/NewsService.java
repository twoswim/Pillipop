package com.kh.pillipop.news.model.service;

import java.util.List;
import java.util.Map;

import com.kh.pillipop.news.model.vo.News;

public interface NewsService {
	List<News> selectAll();
	News selectByNo(int st_seqNo);
//	int selectNewsCount();
	List<News> getPharmList(Map<String, String> searchMap);

}
