package com.kh.pillipop.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.social.google.connect.GoogleConnectionFactory;
//import org.springframework.social.oauth2.GrantType;
//import org.springframework.social.oauth2.OAuth2Operations;
//import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.kh.pillipop.member.model.service.MemberService;
import com.kh.pillipop.member.model.vo.Member;
 
/**
 * Handles requests for the application home page.
 */
@SessionAttributes("loginMember") // loginMember를 model에서 취급할때 Session으로 처리하는 파라메터
@Controller
public class LoginController {
	@Autowired
	private MemberService service;
 
    /* NaverLoginBO */
    private NaverLoginBO naverLoginBO;
    private String apiResult = null;
    
    @Autowired
    private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
        this.naverLoginBO = naverLoginBO;
    }
 
    //로그인 첫 화면 요청 메소드
    @RequestMapping(value = "/login2", method = { RequestMethod.GET, RequestMethod.POST })
    public String login(Model model, HttpSession session) {
        
        /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
        
        //https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
        //redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
        System.out.println("네이버:" + naverAuthUrl);
        
        //네이버 
        model.addAttribute("url", naverAuthUrl);
 
        /* 생성한 인증 URL을 View로 전달 */
//        return "html/member/login";
        return "redirect:"+naverAuthUrl;
    }
 
    //네이버 로그인 성공시 callback호출 메소드
    @RequestMapping(value = "/callback",  method = { RequestMethod.GET, RequestMethod.POST })
    public ModelAndView callback(ModelAndView model, @RequestParam String code, @RequestParam String state, HttpSession session)
            throws IOException {
        System.out.println("여기는 callback");
        OAuth2AccessToken oauthToken;
        oauthToken = naverLoginBO.getAccessToken(session, code, state);
        //로그인 사용자 정보를 읽어온다.
        apiResult = naverLoginBO.getUserProfile(oauthToken);
        System.out.println(apiResult);
        
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObj = null;
		try {
			jsonObj = (JSONObject) jsonParser.parse(apiResult);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		JSONObject jsonObj3 = null;
		try {
			jsonObj3 = (org.json.simple.JSONObject) jsonObj.get("response");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String birth = String.valueOf(jsonObj3.get("birthday"));
        birth = birth.replace("-", "");
        
        String profile = String.valueOf(jsonObj3.get("profile_image"));
        profile = profile.replace("\\", "");
        Member loginMember = new Member();
        loginMember.setU_id(String.valueOf(jsonObj3.get("email")));
        loginMember.setU_name(String.valueOf(jsonObj3.get("name")));
        loginMember.setU_phone(String.valueOf(jsonObj3.get("mobile")));
        loginMember.setU_nickname(String.valueOf(jsonObj3.get("nickname")));
        loginMember.setU_birth(Integer.parseInt(birth));
        loginMember.setU_pw("1234");
        loginMember.setU_img(profile);
        

        
        System.out.println(loginMember.toString());
        
        
        
		int result = 0;
		try {
			result = service.save(loginMember);
		} catch (Exception e) {
			e.printStackTrace();
			result = -1;
		}
		loginMember = service.selectMember(loginMember.getU_id());
		
		System.out.println(loginMember.toString());
		model.addObject("loginMember", loginMember);
		model.setViewName("redirect:/");

		
		
		return model;

    }
}

