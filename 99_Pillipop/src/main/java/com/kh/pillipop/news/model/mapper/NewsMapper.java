package com.kh.pillipop.news.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.kh.pillipop.news.model.vo.News;

@Mapper
public interface NewsMapper {
	List<News> selectAll();
	News selectByNo(int st_seqNo);
	int selectCount();
	
	List<News> selectNewsList(Map<String, String> searchMap);
}
