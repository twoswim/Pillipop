package com.kh.pillipop.member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.pillipop.member.model.service.MemberService;
import com.kh.pillipop.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j // log용도
@SessionAttributes("loginMember") // loginMember를 model에서 취급할때 Session으로 처리하는 파라메터
@Controller
public class MemberController {

	@Autowired
	private MemberService service;

	@PostMapping("/login")
	public String login(Model model, String u_id, String u_pw) {
		log.info("id : " + u_id + ", pw : " + u_pw);
		Member loginMember = service.login(u_id, u_pw);

		if (loginMember != null) {
			model.addAttribute("loginMember", loginMember);
			return "redirect:/";
		} else {
			model.addAttribute("msg", "아이디나 패스워드가 잘못되었습니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
	}


	@Autowired
	private KakaoAPI kakao;

	@RequestMapping(value = "/kakaoEnroll")
	public ModelAndView kakaoEnroll(@RequestParam("code") String code, ModelAndView model) {
		System.out.println("code : " + code);
		String access_Token = kakao.getAccessToken(code);
		System.out.println("controller access_token : " + access_Token);
		
		HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
		Member loginMember = new Member();
		
		loginMember.setU_id(String.valueOf(userInfo.get("email")));
		loginMember.setU_birth(Integer.parseInt(String.valueOf(userInfo.get("birthday"))));
		loginMember.setU_nickname(String.valueOf(userInfo.get("nickname")));
		loginMember.setU_name(String.valueOf(userInfo.get("nickname")));
		loginMember.setU_img(String.valueOf(userInfo.get("profile_image")));
		loginMember.setU_role("일반 유저");
		loginMember.setU_phone("010-1234-1234");
		loginMember.setU_pw("1234");
		
		System.out.println(loginMember.toString());
		
		
		log.info("회원 가입, member : " + loginMember);
		int result = 0;
		try {
			result = service.save(loginMember);
		} catch (Exception e) {
//			e.printStackTrace();
			result = -1;
		}
		loginMember = service.selectMember(loginMember.getU_id());
		model.addObject("loginMember", loginMember);
		model.setViewName("redirect:/");
//		if (result > 0) {
//			System.out.println("가입 성공");
//			model.addObject("loginMember", loginMember);
//			model.addObject("msg", "로그인에 성공하였습니다.");
//			model.addObject("location", "/");
//			model.setViewName("common/msg");
//		} else {
//			System.out.println("가입 실패");
//			model.addObject("msg", "회원가입에 실패하였습니다. 다시 한번 확인해주세요.");
//			model.addObject("location", "/");
//			model.setViewName("common/msg");
//		
//		}
		
		
		
		return model;
	}
	
//	@RequestMapping(value = "/naverEnroll")
//	public ModelAndView naverEnroll(ModelAndView model) {
//
//		
//		HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
//		Member loginMember = new Member();
//		
//		loginMember.setU_id(String.valueOf(userInfo.get("email")));
//		loginMember.setU_birth(Integer.parseInt(String.valueOf(userInfo.get("birthday"))));
//		loginMember.setU_nickname(String.valueOf(userInfo.get("nickname")));
//		loginMember.setU_name(String.valueOf(userInfo.get("nickname")));
//		loginMember.setU_img(String.valueOf(userInfo.get("profile_image")));
//		loginMember.setU_role("일반 유저");
//		loginMember.setU_phone("010-1234-1234");
//		loginMember.setU_pw("1234");
//		
//		System.out.println(loginMember.toString());
//		
//		
//		log.info("회원 가입, member : " + loginMember);
//		int result = 0;
//		try {
//			result = service.save(loginMember);
//		} catch (Exception e) {
////			e.printStackTrace();
//			result = -1;
//		}
//		loginMember = service.selectMember(loginMember.getU_id());
//		model.addObject("loginMember", loginMember);
//		model.setViewName("redirect:/");
////		if (result > 0) {
////			System.out.println("가입 성공");
////			model.addObject("loginMember", loginMember);
////			model.addObject("msg", "로그인에 성공하였습니다.");
////			model.addObject("location", "/");
////			model.setViewName("common/msg");
////		} else {
////			System.out.println("가입 실패");
////			model.addObject("msg", "회원가입에 실패하였습니다. 다시 한번 확인해주세요.");
////			model.addObject("location", "/");
////			model.setViewName("common/msg");
////		
////		}
//		
//		
//		
//		return model;
//	}
	
	@RequestMapping(value = "/kakaoLogin")
	public ModelAndView kakaoLogin(@RequestParam("code") String code, ModelAndView model) {
		System.out.println("code : " + code);
		String access_Token = kakao.getAccessToken(code);
		System.out.println("controller access_token : " + access_Token);
		
		HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
		Member loginMember = new Member();
		
		loginMember.setU_id(String.valueOf(userInfo.get("email")));
		loginMember.setU_birth(Integer.parseInt(String.valueOf(userInfo.get("birthday"))));
		loginMember.setU_nickname(String.valueOf(userInfo.get("nickname")));
		loginMember.setU_img(String.valueOf(userInfo.get("profile_image")));
		loginMember.setU_role("일반 유저");
		loginMember.setU_phone("010-1234-1234");
		loginMember.setU_pw("1234");
		
		System.out.println(loginMember.toString());
		

		model.setViewName("redirect:/");
	
		
		
		
		return model;
	}

	@GetMapping("/loginp")
	public String loginp() {

		return "html/member/2_login-in";
	}

	@GetMapping("/signupp")
	public String signupp() {

		return "html/member/2_login-up";
	}

	@RequestMapping("/logout")
	public String logout(SessionStatus status) {
		log.info("status : " + status.isComplete());
		status.setComplete(); // 세션을 종료하는 코드
		log.info("status : " + status.isComplete());
		return "redirect:/";
	}

//	@GetMapping("/member/enroll")
//	public String enrollPage() {
//		log.info("가입 페이지 요청");
//		return "member/enroll";
//	}

	// ModelAndView 사용법, 가능하면 하나 통일해서 쓸것!! ModelAndView=전자정부에서 좋아한다.....
	@PostMapping("/member/enroll")
	public ModelAndView enroll(ModelAndView model, @ModelAttribute Member member) {
		log.info("회원 가입, member : " + member);
		int result = 0;
		try {
			result = service.save(member);
		} catch (Exception e) {
			result = -1;
		}
		if (result > 0) {
			model.addObject("msg", "회원가입에 성공하였습니다.");
			model.addObject("location", "/");
		} else {
			model.addObject("msg", "회원가입에 실패하였습니다. 다시 한번 확인해주세요.");
			model.addObject("location", "/");
		}
		model.setViewName("common/msg");
		return model;
	}

	// AJAX 대응용 코드
	// ResponseEntity : json 객체를 알아서 만들어 주는 리턴값
	@GetMapping("/member/idCheck")
	public ResponseEntity<Map<String, Object>> idCheck(String id) {
		log.info("아이디 중복 확인, user id : " + id);

		boolean result = service.validate(id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("validate", result);

		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
	}

	// 프로필 페이지 조회
	@GetMapping("/myPage/profile")
	public String selectMember(Model model,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
		log.info("프로필 페이지 요청");

		if (loginMember == null) {
			return "/loginp";
		} else {
//				모델일 때 어트리뷰트, 모델&뷰일 때 오브젝트로 설정하기
			Member member = service.selectMember(loginMember.getU_id());
			model.addAttribute("Member", member);

//				System.out.println(list.toString());
		}
		return "html/myPage/5_myPage-profile";
	}

	// 프로필 변경사항 저장
	@PostMapping("/myPage/profile/update")
	public String updateMember(Model model, HttpServletRequest request, @ModelAttribute Member member, // @ModelAttribute
			@SessionAttribute(name = "loginMember", required = false) Member loginMember
//					@RequestParam("reloadFile") MultipartFile reloadFile
	) {

		System.out.println("member : " + member);

		if (loginMember == null) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}

//		// 파일을 저장하는 로직
//				if(reloadFile != null && reloadFile.isEmpty() == false) {
//					String rootPath = request.getSession().getServletContext().getRealPath("resources");
//					String savePath = rootPath + "/upload/board";
//					
//					// 기존에 파일이 있는 경우 -> 기존 파일 삭제요청 필요!!
//					if(Member.getimage() != null) {
//						service.deleteFile(savePath + "/" + board.getRenamedFileName());
//					}
//					
//					String renameFileName = service.saveFile(reloadFile, savePath); // 실제 파일 저장하는 코드
//					if(renameFileName != null) {
//						board.setOriginalFileName(reloadFile.getOriginalFilename());
//						board.setRenamedFileName(renameFileName);
//					}
//				}
//				
//				log.debug("board : " + board);

		member.setU_no(loginMember.getU_no());
		int result = service.updateMember(member);

		if (result > 0) {
			model.addAttribute("loginMember", service.selectMember(member.getU_id())); // DB에 있는 값으로 다시 세션값 업데이트
			model.addAttribute("msg", "회원정보를 수정하였습니다.");
			System.out.println("!!");
			model.addAttribute("location", "/myPage/profile");
		} else {
			model.addAttribute("msg", "회원정보 수정을 실패하였습니다.");
			System.out.println("!!");
			model.addAttribute("location", "/myPage/profile");
		}
		System.out.println("!!");
		return "common/msg";
	}

	// 프로필 페이지 > 비빌번호 변경 페이지로 이동
	@GetMapping("/myPage/passwordChange")
	public String updatePwdView() {
		log.info("패스워드 변경 페이지 요청");
		return "html/myPage/5_myPage-passwordChange";
	}

	// 회원 탈퇴 페이지 호출
	@GetMapping("/myPage/signOut")
	public String deleteMemberView() {
		log.info("회원탈퇴 페이지 요청");
		return "html/myPage/5_myPage-signOut";
	}

	// 탈퇴하기
	@GetMapping("/myPage/signOut/Agree")
	public String deleteMember(Model model, @ModelAttribute Member member,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {

		if (loginMember == null || loginMember.getU_id().equals(member.getU_id()) == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}

		member.setU_no(loginMember.getU_no());
		int result = service.deleteMember(loginMember.getU_no());

		if (result > 0) {
			model.addAttribute("msg", "정상적으로 탈퇴 되었습니다.");
			model.addAttribute("location", "/logout");
		} else {
			model.addAttribute("msg", "회원 탈퇴에 실패하였습니다.");
			model.addAttribute("location", "/member/view");
		}
		return "common/msg";
	}
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder; // SHA-256 Hash code 알고리즘 활용 객체 (일방향 암호화)

	@PostMapping("/member/updatePwd")
	   public String updatePwd(Model model, @SessionAttribute(name = "loginMember", required = false) Member loginMember,
	         String newpass, String confirmpass, String currentpass) {
	      log.info("update pw : " + newpass);
	      
	      String pw = loginMember.getU_pw(); // DB에 있는 암호화된 비밀번호
//	      String pw2 = passwordEncoder.encode(currentpass);
	   
	      
	      System.out.println("DB에 저장된 암호화 비밀번호 : " + pw);
	      System.out.println("사용자 입력값 암호화한 거 : " + passwordEncoder.encode(currentpass));
	      
	      int result = 0;
	      if(passwordEncoder.matches(currentpass, pw) == true) {
	         System.out.println("현재 비밀번호 일치");
	         
	         if(newpass.equals(confirmpass) == true) {
	            System.out.println("새로운 비밀번호 확인");
	            System.out.println("confirmpass : " + confirmpass);
	            result = service.updatePwd(loginMember, confirmpass);
	         } else {
	            model.addAttribute("msg", "비밀번호 변경에 실패하였습니다. 비밀번호를 다시 확인해주세요!");
	         }
	      }

	      if (result > 0) {
	         model.addAttribute("msg", "정상적으로 수정되었습니다.");
	      } else {
	         model.addAttribute("msg", "비밀번호 변경에 실패하였습니다.");
	      }
	      model.addAttribute("script", "self.close()");
	      return "common/msg";
	   }
	


}
