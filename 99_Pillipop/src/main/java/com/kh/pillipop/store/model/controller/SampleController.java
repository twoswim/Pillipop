package com.kh.pillipop.store.model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.kh.pillipop.member.model.vo.Member;
import com.kh.pillipop.store.model.service.HealthService;
import com.kh.pillipop.store.model.service.KakaoPay;
import com.kh.pillipop.store.model.vo.Basket;
import com.kh.pillipop.store.model.vo.Order;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class SampleController {
	
	@Autowired
	private HealthService service;
	
	@Setter(onMethod_ = @Autowired)
    private KakaoPay kakaopay;
    
    
    @GetMapping("/kakaoPay")
    public void kakaoPayGet() {
        
    }
    
    @PostMapping("/kakaoPay")
    public String kakaoPay(Model model,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Basket basket,
			@ModelAttribute Order order
			){
		log.info("결제 시도");	
		if(loginMember == null) {
			model.addAttribute("msg", "로그인 후에 다시 시도해주세요.");
			log.info("로그인X");
			model.addAttribute("location", "/");
			return "/common/msg";
		}
		
		List<Basket> baskets = service.selectBasketList(loginMember.getU_no());

		 for(int i = 0; i < baskets.size(); i++) {
			 service.orderBasket(baskets.get(i).getB_num());
			 
			 log.info("결제 장바구니 :" + baskets.toString());
		 }

		order.setU_no(loginMember.getU_no());
		int result = service.saveOrder(order);
		log.info("주문 정보 :" + order.toString());
			
		if(result > 0) {
			log.info("주문 성공!");
			model.addAttribute("location", "/health/mypage_order?no=" + loginMember.getU_no());
		}else {
			log.info("주문 실패.");
				model.addAttribute("location", "/health/mypage_order?no=" + loginMember.getU_no());
		}
		
        log.info("kakaoPay post............................................");
        
        return "redirect:" + kakaopay.kakaoPayReady();
 
    }
    
    @GetMapping("/kakaoPaySuccess")
    public Model kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model,
    		@SessionAttribute(name = "loginMember", required = false) Member loginMember
    		) {
        log.info("kakaoPaySuccess get............................................");
        log.info("kakaoPaySuccess pg_token : " + pg_token);
        
        model.addAttribute("location", "/health/mypage_order?no=" + loginMember.getU_no());
        
        return model;
    }
}
