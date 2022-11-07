package com.kh.pillipop.ajax.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.pillipop.medicine.model.service.MedicineService;

@Controller
public class AutoController {

	@Autowired
	MedicineService service;

	@RequestMapping(value = "auto.do")
	public @ResponseBody Map<String, Object> auto(@RequestParam Map<String, Object> paramMap) throws Exception {
		List<Map<String, Object>> resultList = service.auto(paramMap);
		paramMap.put("resultList", resultList);

		return paramMap;
	}
}