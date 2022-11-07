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

import com.kh.pillipop.medicine.model.service.MedicineService;
import com.kh.pillipop.medicine.model.vo.MLike;

@Controller
@RequestMapping("/medicine")
public class LikeAjaxController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private MedicineService service;
	
	@SuppressWarnings("unchecked")
	@Override
	@RequestMapping(value = "like.do", method = RequestMethod.GET)
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("좋아요 Servlet 호출");
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		
		List<MLike> list = new ArrayList<MLike>();
		int u_no = Integer.parseInt(req.getParameter("u_no"));
		int itemSeq = Integer.parseInt(req.getParameter("itemSeq"));
		
		list = service.selectLike();
		
		int result = 1;
		for(int i = 0; i < list.size();) {
			if(list.get(i).getU_no() == u_no && list.get(i).getItemSeq() == itemSeq) {
				service.deleteLike(u_no, itemSeq);
				System.out.println("찜 제거");
				result = 0;
				break;
			} else {
				i++;
			}
		}
		
		if(result == 1) {
			service.insertLike(u_no, itemSeq);
			System.out.println("찜 추가");
		}
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", result);
		
		resp.setContentType("application/json; charset=UTF-8");
		resp.getWriter().append(jsonObject.toJSONString());
	}

}
