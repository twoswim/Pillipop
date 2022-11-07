package com.kh.pillipop.store.model.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.kh.pillipop.member.model.vo.Member;
import com.kh.pillipop.store.model.service.HealthService;
import com.kh.pillipop.store.model.vo.Basket;
import com.kh.pillipop.store.model.vo.Health;
import com.kh.pillipop.store.model.vo.Order;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/health")
public class HealthController {

	@Autowired
	private HealthService service;
	
	@GetMapping("/Store_main")
	public String list(Model model) {
		log.info("스토어 페이지 요청");
		List<Health> list = service.selectAll();
		
		model.addAttribute("list", list);
		return "html/store/Store_main";
	}
	
	@GetMapping("/message")
	public String message(Model model) {
		
		model.addAttribute("msg", "결제가 완료 되었습니다.");
		model.addAttribute("location", "/health/Store_main");
		return "common/msg";
	}
	
	@GetMapping("/product")
	public String list(Model model, @RequestParam("PRDLST_REPORT_NO") long PRDLST_REPORT_NO){
		log.info("상품 페이지 요청");
		Health health = service.selectByNo(PRDLST_REPORT_NO);
		List<Health> list = service.selectAll();
			
		
		model.addAttribute("health", health);
		model.addAttribute("list", list);
		return "html/store/product";
	}
	
	@PostMapping("/basket")
	public String addBasket(Model model,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Basket basket
			) {
		log.info("장바구니 추가 시도");
		
		if(loginMember == null) {
			model.addAttribute("msg", "로그인 후에 이용가능합니다..");
			model.addAttribute("location", "/");
			log.info("비로그인");
			return "/common/msg";
		}
		
		basket.setU_no(loginMember.getU_no());
		
		log.info("basket : " + basket.toString());
		
		int result = service.saveBasket(basket);
		
		if(result > 0) {
			model.addAttribute("msg", "장바구니에 상품을 넣었습니다.");
			log.info("장바구니 상품 추가 성공!");
			model.addAttribute("location", "/health/product?PRDLST_REPORT_NO=" + basket.getPRDLST_REPORT_NO());
		}else {
			model.addAttribute("msg", "장바구니에 상품 추가를 실패하였습니다.");
			log.info("장바구니 상품 추가 실패.");
			model.addAttribute("location", "/health/product?PRDLST_REPORT_NO=" + basket.getPRDLST_REPORT_NO());
		}
		return "/common/msg";
	}
	
	@GetMapping("/basketList")
	public String listbasket(Model model,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
		log.info("장바구니페이지 요청");
		List<Basket> basket = service.selectBasketList(loginMember.getU_no());
		int basketcount = service.getBasketCount(loginMember.getU_no());
		
		int total = 0;
		for (int i = 0; i < basket.size(); i++) {
			int pr = Integer.parseInt(basket.get(i).getHth_price());
			int ea = basket.get(i).getB_ea();
			if(basket.get(i).getHth_discount() == null) {
				total += pr * ea;
			}else {
				Double di = Double.parseDouble(basket.get(i).getHth_discount());
				total += (Math.round((pr -(pr*(di/100)))/100)*100)*ea;
				System.out.println("할인가격 : " + Math.round((pr -(pr*(di/100)))/100)*100);	
				System.out.println("원가 : " + pr);		
				System.out.println("할인율 : " + di/100);		
			}
		}
		System.out.println("total : " + total);		
		
		log.info("basket : " + basket.toString());
		log.info("장바구니 불러오기 - 회원번호 : " + loginMember.getU_no());
		model.addAttribute("total", total);
		model.addAttribute("basket", basket);
		model.addAttribute("basketcount", basketcount);
		return "html/store/myBasket";
	}

	@RequestMapping("/delete_basket")
	public String deleteBoardReply(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int b_num
			) {
		log.debug("장바구니 상품 삭제 요청");
		int result = service.deleteBasket(b_num);

		if(result > 0) {
			model.addAttribute("msg", "장바구니 상품 삭제에 성공하였습니다.");
		}else {
			model.addAttribute("msg", "장바구니 상품 삭제 실패하였습니다.");
		}
		model.addAttribute("location", "/health/basketList?no=" + loginMember.getU_no());
		return "/common/msg";
	}
	
	@GetMapping("/payment")
	public String listbasketpay(Model model,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
		log.info("결제페이지 요청");
		List<Basket> basket = service.selectBasketList(loginMember.getU_no());
		int basketcount = service.getBasketCount(loginMember.getU_no());
		
		if(basketcount == 0) {
			model.addAttribute("msg", "장바구니에 담긴 상품이 없습니다.");
			log.info("장바구니에 담긴 상품이 없습니다.");
			model.addAttribute("location", "/health/basketList?no=" + loginMember.getU_no());
		}
		
		int total = 0;
		for (int i = 0; i < basket.size(); i++) {
			int pr = Integer.parseInt(basket.get(i).getHth_price());
			int ea = basket.get(i).getB_ea();
			if(basket.get(i).getHth_discount() == null) {
				total += pr * ea;
			}else {
				Double di = Double.parseDouble(basket.get(i).getHth_discount());
				total += (Math.round((pr -(pr*(di/100)))/100)*100)*ea;
			}
		}
		
		model.addAttribute("total", total);
		model.addAttribute("basket", basket);
		model.addAttribute("basketcount", basketcount);
		return "html/store/payment";
	}
	
	@PostMapping("/payment")
	public String payment1(Model model,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Basket basket,
			@ModelAttribute Order order
			) {
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
			model.addAttribute("msg", "상품을 주문하셨습니다.");
			log.info("주문 성공!");
			model.addAttribute("location", "/health/mypage_order?no=" + loginMember.getU_no());
		}else {
			model.addAttribute("msg", "상품 주문에 실패하였습니다.");
			log.info("주문 실패.");
				model.addAttribute("location", "/health/mypage_order?no=" + loginMember.getU_no());
		}
		 
		return "/common/msg";
	}
	
	@GetMapping("/mypage_order")
	public String orderList(Model model,
		@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
		log.info("주문내역 페이지 요청");
		log.info("로그인유저번호 : " + loginMember.getU_no());
		List<Basket> basket = service.selectOrders(loginMember.getU_no());
//		List<Order> order = service.selectListOrder(loginMember.getU_no());
		Order orderInfo = service.selctOrderInfo(loginMember.getU_no());
		
		log.info("Basket : " + basket.toString());
		model.addAttribute("basket", basket);
//		model.addAttribute("order", order);
		model.addAttribute("orderInfo", orderInfo);
		return "html/myPage/myPage-orders";
	}
}
