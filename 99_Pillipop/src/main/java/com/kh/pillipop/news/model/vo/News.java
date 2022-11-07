package com.kh.pillipop.news.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class News {
	private int	   st_seqNo; 		// 뉴스일련번호
	private String st_title; 		// 제목
	private String st_subTitle; 	// 부제목
	private String st_thumbNail;	// 썸네일
	private int    st_view; 		// 조회수
	private String st_date; 	    // 작성날짜
	private String st_cate; 	    // 카테고리
	private String st_content1; 	// 내용1
	private String st_content2; 	// 내용2
	private String st_content3; 	// 내용3
	private String st_content4; 	// 내용4
	private String st_content5; 	// 내용5

//	검색필터
	private String type; 			// 검색타입
	private String keyword; 		// 검색내용
}
