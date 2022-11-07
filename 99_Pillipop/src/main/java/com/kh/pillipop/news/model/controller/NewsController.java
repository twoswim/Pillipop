package com.kh.pillipop.news.model.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.pillipop.medicine.model.vo.Medicine;
import com.kh.pillipop.news.model.service.NewsService;
import com.kh.pillipop.news.model.vo.News;

//@Slf4j
@Controller
@RequestMapping("/news")
public class NewsController {
	
	@Autowired
	private NewsService service;

	
//	뉴스 전체 목록으로 이동
	@GetMapping("/newslist")
	public String list(Model model, @RequestParam Map<String, String> searchMap) {
		
		List<News> list = service.getPharmList(searchMap);

		model.addAttribute("list", list);
		model.addAttribute("searchMap", searchMap);
		System.out.println(list);
		System.out.println(searchMap);
		return "html/news/1_news_list";
	}
	
//	뉴스 상세페이지로 이동
	@GetMapping("/newsdetail")
	public String view(Model model, @RequestParam("st_seqNo") int st_seqNo) {
		News news = service.selectByNo(st_seqNo); 
		
		model.addAttribute("news", news);
		return "html/news/2_news_detail";
	}
	
////	ajax 서버 
//	@GetMapping("/getSearchList")
//	@ResponseBody
//	private List<News> getSearchList(Model model, @RequestParam("type") String type, 
//			@RequestParam("keyword") String keyword) throws Exception{
//		News news = new News();
//		news.setType(type);
//		news.setKeyword(keyword);
//		
//		return NewsService.getSearchList(news);
//	}

}
