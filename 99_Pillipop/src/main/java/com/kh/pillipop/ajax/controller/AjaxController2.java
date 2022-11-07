package com.kh.pillipop.ajax.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.pillipop.medicine.model.service.MedicineService2;
import com.kh.pillipop.medicine.model.vo.Medicine2;

@Controller
@RequestMapping("/medicine")
public class AjaxController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private MedicineService2 service2;
	
	@SuppressWarnings("unchecked")
	@Override
	@RequestMapping(value = "search2.do", method = RequestMethod.GET)
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("낱알 검색 Servlet 호출");
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");

		List<Medicine2> list = new ArrayList<Medicine2>();
		List<Medicine2> list2 = new ArrayList<Medicine2>();
		String MARK_IMG 	= req.getParameter("MARK_IMG");
		String DRUG_SHAPE 	= req.getParameter("DRUG_SHAPE");
		String ITEM_LINE 	= req.getParameter("ITEM_LINE");
		String ITEM_COLOR 	= req.getParameter("ITEM_COLOR");
		
		list = service2.selectAll();

		// 검색했을 때 결과를 list2에 담음
		for (int i = 0; i < list.size(); i++) {
			String value = list.get(i).getMARK_IMG();
			String value2 = list.get(i).getDRUG_SHAPE();
			String value3 = list.get(i).getITEM_LINE();
			String value4 = list.get(i).getITEM_COLOR();
			if (value.contains(MARK_IMG)) {
				if (DRUG_SHAPE.equals("원형") == false) {
					if (value2.contains(DRUG_SHAPE)) {
						if (value3.contains(ITEM_LINE)) {
							if (value4.contains(ITEM_COLOR)) {
								list2.add(list.get(i));
							}
						}
					}
				}
				if (DRUG_SHAPE.equals("원형") == true) {
					if (value2.equals(DRUG_SHAPE)) {
						if (value3.contains(ITEM_LINE)) {
							if (value4.contains(ITEM_COLOR)) {
								list2.add(list.get(i));
							}
						}
					}
				}
			}
		}
		
		int index = 10;
		
		// list가 10보다 작으면 index 재설정
		if(list2.size() < 10) {
			index = list2.size();
		}
		
		// index 만큼 출력
		List<Medicine2> list3 = new ArrayList<Medicine2>(list2.subList(0, index));
		
		// JSON 객체 생성
		JSONArray jsonArray = new JSONArray();

		// list2를 JSON 객체에 넣음
		for (Medicine2 info : list3) {
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("ITEM_NAME", info.getITEM_NAME());
			jsonObject.put("ITEM_SEQ", info.getITEM_SEQ());
			jsonObject.put("ENTP_NAME", info.getENTP_NAME());
			jsonObject.put("ITEM_IMAGE", info.getITEM_IMAGE());

			jsonArray.add(jsonObject);
		}
		System.out.println(jsonArray.toJSONString());
		resp.setContentType("application/json; charset=UTF-8");
		resp.getWriter().append(jsonArray.toJSONString());
		list2.clear();
	}
	
}
