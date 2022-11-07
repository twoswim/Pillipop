package com.kh.pillipop.mypage.model.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.pillipop.medicine.model.service.MedicineService;
import com.kh.pillipop.medicine.model.vo.MLike;
import com.kh.pillipop.medicine.model.vo.Medicine;
import com.kh.pillipop.member.model.vo.Member;
import com.kh.pillipop.mypage.model.service.MyPillipopService;
import com.kh.pillipop.mypage.model.vo.MyPillipop;

import lombok.extern.slf4j.Slf4j;

@Slf4j // log용도
@SessionAttributes
@Controller
public class MyPilllipopController {
	
	@Autowired
	private MyPillipopService service;
	
//	마이 필리팝 조회
	@GetMapping("/myPage/myPillipop")
	public String selectByUNo(Model model,
			@ModelAttribute MyPillipop mypillipop,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
			
			log.info("마이 필리팝 조회");
		
			if(loginMember == null) {
		    	model.addAttribute("msg", "잘못된 접근입니다.");
				model.addAttribute("location", "/loginp");
				return "common/msg";
			}
			
			log.info("내 필리팝 보기 실행");
//			모델일 때 어트리뷰트, 모델&뷰일 때 오브젝트로 설정하기
			List<MyPillipop> list = service.selectByUNo(loginMember.getU_no());
			
			
			
			
			System.out.println(loginMember);
			System.out.println(list.toString());
			
			model.addAttribute("list",list);
			
			return "html/myPage/5_myPage-myPillipop";
	}
	
	@GetMapping("/myPage/myPillipop/view")
	public String view(Model model, @RequestParam("itemSeq") int itemSeq) {
		Medicine medicine = service2.selectByNo(itemSeq);
		System.out.println(medicine);
		
		model.addAttribute("medicine", medicine);
		return "html/myPage/5_myPage-myPillipop";
	}

//	복용중인 약 추가하기
	@PostMapping("/myPage/myPillipop/insert")
	public String insert(Model model,
			@ModelAttribute MyPillipop mypillipop,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {

		if(loginMember == null) {
	    	model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/loginp");
			return "common/msg";
		}
		
		log.info("새로운 약 추가 실행");
		mypillipop.setU_no(loginMember.getU_no());
	
		service.insert(mypillipop);
		System.out.println(mypillipop.toString());		
		
		model.addAttribute("msg", "새로운 약 추가에 성공하였습니다.");
		model.addAttribute("location", "/myPage/myPillipop");
		
		return "/common/msg";

	}
	
	
//	복용중인 약 삭제하기
	@GetMapping("/myPage/myPillipop/delete")
	public String delete(Model model,
			@SessionAttribute(name= "loginMember", required = false) Member loginMember,
			int itemSeq) {
		
		if(loginMember == null) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_no", ""+loginMember.getU_no());
		map.put("itemSeq", ""+itemSeq);
		
		log.info("복용중인 약 삭제 실행");
		int result = service.delete(map);
		
		if(result > 0 ) {
			model.addAttribute("msg", "삭제 되었습니다.");
			model.addAttribute("location", "/myPage/myPillipop");
		}else {
			model.addAttribute("msg", "삭제를 실패하였습니다. 다시 시도해주세요.");
			model.addAttribute("location", "/myPage/myPillipop");
		}
		return "common/msg";
	}
	
	@Autowired
	private MedicineService service2;
	
	@GetMapping("/myPage/myPillipop/popup")
	public String list(Model model) {
		List<Medicine> list = service2.selectAll();
		List<MLike> like = service2.selectLike();
		
		model.addAttribute("list", list);
		model.addAttribute("like", like);
		return "html/myPage/popup";
	}
	
//	아침 점심, 저녁 보내서 컨트롤러 아이템 모델 어트리뷰트
}
