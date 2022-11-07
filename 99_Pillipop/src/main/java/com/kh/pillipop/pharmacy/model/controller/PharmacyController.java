package com.kh.pillipop.pharmacy.model.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.pillipop.pharmacy.model.service.PharmacyService;
import com.kh.pillipop.pharmacy.model.vo.Pharmacy;
import com.kh.pillipop.pharmacy.model.vo.pLike;


//@Slf4j
@RequestMapping("/pharmacy")
@Controller
public class PharmacyController {
	
	@Autowired
	private PharmacyService service;
	
	@GetMapping("/main")
	public String main(Model model) {
		return "html/pharmacy/ks_main";
	}

	@GetMapping("/search")
	public String search(Model model, @RequestParam String city, @RequestParam String county, 
			@RequestParam String detailValue, @RequestParam String pharmDetail) {
		
		Map<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("city", city);
		searchMap.put("county", county);
		searchMap.put("detailValue", detailValue);
		searchMap.put("pharmDetail", pharmDetail);
		
		List<Pharmacy> list = service.getPharmList(searchMap);
		
		model.addAttribute("list", list);
		model.addAttribute("city", city);
		model.addAttribute("county", county);
		model.addAttribute("detailValue", detailValue);
		model.addAttribute("pharmDetail", pharmDetail);
		model.addAttribute("listCount", list.size());
		
		return "html/pharmacy/ks_list";
		
	}
	
	@GetMapping("/detail")
	public String view(Model model, @RequestParam("dutyNo") int dutyNo) {
		Pharmacy pharmacy = service.selectPharmNo(dutyNo);
		List<pLike> like = service.selectPLike();
		
		model.addAttribute("pharmacy", pharmacy);
		model.addAttribute("like", like);
		return "html/pharmacy/ks_det";
	}
	
//	@GetMapping("/mLike")
//	public String pLike(Model model) {
//		List<Pharmacy> Plist = service.selectLikePharmacy();
//		
//		model.addAttribute("Plist", Plist);
//		return "html/myPage/5_myPage-favorites";
//		
//	}
	
}
