package com.kh.pillipop.ajax.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.pillipop.pharmacy.model.service.PharmacyService;
import com.kh.pillipop.pharmacy.model.vo.pLike;

@Controller
@RequestMapping("/pharmacy")
public class LikePharmAjaxController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private PharmacyService service;
	
	@SuppressWarnings("unchecked")
	@Override
	@RequestMapping(value = "plike.do", method = RequestMethod.GET)
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("좋아요 Servlet 호출");
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		
		List<pLike> list = new ArrayList<pLike>();
		int u_no = Integer.parseInt(req.getParameter("u_no"));
		int dutyNo = Integer.parseInt(req.getParameter("dutyNo"));
		
		list = service.selectPLike();
		
		int result = 1;
		for(int i = 0; i < list.size();) {
			if(list.get(i).getU_no() == u_no && list.get(i).getDutyNo() == dutyNo) {
				service.deletePLike(u_no, dutyNo);
				System.out.println("찜 제거");
				result = 0;
				break;
			} else {
				i++;
			}
		}
		
		if(result == 1) {
			service.insertPLike(u_no, dutyNo);
			System.out.println("찜 추가");
		}
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", result);
		
		resp.setContentType("application/json; charset=UTF-8");
		resp.getWriter().append(jsonObject.toJSONString());
	}

}
