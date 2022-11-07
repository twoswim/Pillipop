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

import com.kh.pillipop.medicine.model.service.MedicineService;
import com.kh.pillipop.medicine.model.vo.Medicine;

@Controller
@RequestMapping("/medicine")
public class AjaxController3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private MedicineService service;
	
	@SuppressWarnings("unchecked")
	@Override
	@RequestMapping(value = "more.do", method = RequestMethod.GET)
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("더 보기 Servlet 호출");
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");

		List<Medicine> list 	= new ArrayList<Medicine>();
		List<Medicine> list2 	= new ArrayList<Medicine>();
		String itemName 		= req.getParameter("itemName");
		String entpName 		= req.getParameter("entpName");
		String efcyQesitm 		= req.getParameter("efcyQesitm");
		String startIndex 		= req.getParameter("startIndex");
		int index 				= Integer.parseInt(startIndex);
		System.out.println(index);
		
		list = service.selectAll();

		// 검색했을 때 결과를 list2에 담음
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getItemName().contains(itemName)) {
				if (list.get(i).getEntpName().contains(entpName)) {
					if (list.get(i).getEfcyQesitm() != null && list.get(i).getEfcyQesitm().contains(efcyQesitm)) {
						list2.add(list.get(i));
					} 
				}
			}
		}
		
		// list2가 index보다 작으면 index 재설정
		if(list2.size() < index) {
			index = list2.size();
		}
		
		// index 만큼 출력
		List<Medicine> list3 = new ArrayList<Medicine>(list2.subList(0, index));
		
		// JSON 객체 생성
		JSONArray jsonArray = new JSONArray();

		// list2를 JSON 객체에 넣음
		for (Medicine info : list3) {
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("itemImage", info.getItemImage());
			jsonObject.put("itemName", info.getItemName());
			jsonObject.put("itemSeq", info.getItemSeq());
			jsonObject.put("entpName", info.getEntpName());

			jsonArray.add(jsonObject);
		}
		
		System.out.println(jsonArray.toJSONString());
		resp.setContentType("application/json; charset=UTF-8");
		resp.getWriter().append(jsonArray.toJSONString());
	}

}
