package com.kh.pillipop.board.controller;

import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.kh.pillipop.board.model.service.BoardService;
import com.kh.pillipop.board.model.vo.Board;
import com.kh.pillipop.board.model.vo.Reply;
import com.kh.pillipop.common.util.PageInfo;
import com.kh.pillipop.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@RequestMapping("/board") 
@Controller
public class BoardController {

	@Autowired
	private BoardService service;
	
	@Autowired
	private ResourceLoader resourceLoader; // 파일 다운로드 기능시 활용하는 loader
	
	@GetMapping("/4_boardList")
	public String list(Model model, @RequestParam Map<String, String> param) {
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		
		System.out.println("카테고리 : " + param.get("searchCate"));
		
		
		log.debug("param : " + param.toString());
		PageInfo pageInfo = new PageInfo(page, 10, service.getBoardCount(param), 10);
		List<Board> list = service.getBoardList(pageInfo, param);
		
		model.addAttribute("list",list);
		model.addAttribute("param",param);
		model.addAttribute("pageInfo",pageInfo);
		return "html/board/4_boardList";
	}
	
	@GetMapping("/4_boardRead")
//	@GetMapping("/board/4_boardRead")
	public String view(Model model, @RequestParam("boNo") int boNo) {
		Board board = service.findByNo(boNo);
		
		if(board == null) {
			return "redirect:error";
		}
		
		model.addAttribute("board", board);
		model.addAttribute("replyList", board.getReplies());
		return "html/board/4_boardRead";
	}
	
	@GetMapping("/error")
	public String error() {
		log.info("에러 페이지 호출!!");
		return "/common/error";
	}
	
	
//	@RequestMapping(name = "/4_boardWrite", method = RequestMethod.POST)
	@PostMapping("/4_boardWrite")
	public String writeBoard(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Board board,
			@RequestParam("upfile") MultipartFile upfile
			) {
		log.info("게시글 작성 요청");
		
		if(loginMember == null || (loginMember.getU_no() != board.getU_no())) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "/common/msg";
		}
		
		board.setU_no(loginMember.getU_no());
		board.setU_nickname(loginMember.getU_nickname());
		
		// 파일을 저장하는 로직
		if(upfile != null && upfile.isEmpty() == false) {
			String rootPath = request.getSession().getServletContext().getRealPath("resources");
			String savePath = rootPath + "/upload/board";
			String renameFileName = service.saveFile(upfile, savePath); // 실제 파일 저장하는 코드
			
			if(renameFileName != null) {
				board.setAttachment(upfile.getOriginalFilename());
				board.setModifiedAttachment(renameFileName);
			}
		}
		log.debug("board : " + board);
		
		int result = service.saveBoard(board);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글 작성이 정상적으로 성공하였습니다.");
			model.addAttribute("location", "/board/4_boardList");
		}else {
			model.addAttribute("msg", "게시글 작성에 실패하였습니다.");
			model.addAttribute("location", "/board/4_boardList");
		}
		return "/common/msg";
	}
	
	@PostMapping("/reply")
	public String writeReply(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Reply reply
			) {
		log.info("리플 작성 요청");
		
		if(loginMember == null || (loginMember.getU_no() != reply.getU_no())) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "/common/msg";
		}
		
		reply.setU_no(loginMember.getU_no());
		reply.setU_id(loginMember.getU_id());
		reply.setU_nickname(loginMember.getU_nickname());
		reply.setReContent(reply.getReContent());
		
		log.debug("reply : " + reply);
		
		int result = service.saveReply(reply);
		
		if(result > 0) {
			model.addAttribute("msg", "댓글이 등록 되었습니다.");
		}else {
			model.addAttribute("msg", "댓글 작성에 실패하였습니다.");
		}
		model.addAttribute("location", "/board/4_boardRead?boNo="+ reply.getBoNo());
		return "/common/msg";
	}
	
	@RequestMapping("/delete")
	public String deleteBoardReply(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int boNo
			) {
		log.debug("글삭제 요청");
		
		String rootPath = request.getSession().getServletContext().getRealPath("resources");
		rootPath = rootPath + "/upload/board"; 
		int result = service.deleteBoard(boNo, rootPath);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글 삭제에 성공하였습니다.");
		}else {
			model.addAttribute("msg", "게시글 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/board/4_boardList");
		return "/common/msg";
	}
	
	
	@RequestMapping("/replydel")
	public String deleteReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int reNo, int boNo
			) {
		log.debug("댓글 삭제 요청");
		int result = service.deleteReply(reNo);
		
		if(result > 0) {
			model.addAttribute("msg", "댓글 삭제에 성공하였습니다.");
		}else {
			model.addAttribute("msg", "댓글 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/board/4_boardRead?boNo=" + boNo);
		return "/common/msg";
	}
	
	
	// update 화면 보여주는 기능
	@GetMapping("/4_boardUpdate")
	public String updateView(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestParam("boNo") int boNo) {
		Board board = service.findByNo(boNo);
		
		if(loginMember.getU_no() == board.getU_no()) {
			model.addAttribute("board",board);
			return "html/board/4_boardUpdate";
		}else {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/board/4_boardList");
			return "/common/msg";
		}
	}
	
	@PostMapping("/4_boardUpdate")
	public String updateBoard(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Board board,
			@RequestParam("reloadFile") MultipartFile reloadFile
			) {
		log.info("게시글 수정 요청");
		
		if(loginMember.getU_no() != board.getU_no()) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "/common/msg";
		}
		
		board.setU_no(loginMember.getU_no());
		board.setU_nickname(loginMember.getU_nickname());
		
		// 파일을 저장하는 로직
		if(reloadFile != null && reloadFile.isEmpty() == false) {
			String rootPath = request.getSession().getServletContext().getRealPath("resources");
			String savePath = rootPath + "/upload/board";
			
			// 기존에 파일이 있는 경우 -> 기존 파일 삭제요청 필요!!
			if(board.getModifiedAttachment() != null) {
				service.deleteFile(savePath + "/" + board.getModifiedAttachment());
			}
			
			String modifiedAttachment = service.saveFile(reloadFile, savePath); // 실제 파일 저장하는 코드
			if(modifiedAttachment != null) {
				board.setAttachment(reloadFile.getOriginalFilename());
				board.setModifiedAttachment(modifiedAttachment);
			}
		}
		log.debug("board : " + board);
		
		int result = service.saveBoard(board);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글 수정이 정상적으로 성공하였습니다.");
			model.addAttribute("location", "/board/4_boardRead?boNo=" + board.getBoNo());
		}else {
			model.addAttribute("msg", "게시글 수정에 실패하였습니다.");
			model.addAttribute("location", "/board/4_boardUpdate?boNo=" + board.getBoNo());
		}
		return "/common/msg";
	}
	
	@RequestMapping("/fileDown")
	public ResponseEntity<Resource> fileDown(
			@RequestParam("oriname") String oriname,
			@RequestParam("rename") String rename,
			@RequestHeader(name= "user-agent") String userAgent){
		try {
			Resource resource = resourceLoader.getResource("resources/upload/board/" + rename);
			String downName = null;
			
			// 인터넷 익스플로러 인 경우
			boolean isMSIE = userAgent.indexOf("MSIE") != -1 || userAgent.indexOf("Trident") != -1;

			if (isMSIE) { // 익스플로러 처리하는 방법
				downName = URLEncoder.encode(oriname, "UTF-8").replaceAll("\\+", "%20");
			} else {    		
				downName = new String(oriname.getBytes("UTF-8"), "ISO-8859-1"); // 크롬
			}
			
			return ResponseEntity.ok()
					.header(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=\"" + downName + "\"")
					.header(HttpHeaders.CONTENT_LENGTH, String.valueOf(resource.contentLength()))
					.header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_OCTET_STREAM.toString())
					.body(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build(); // 실패했을 경우
	}
	
	@GetMapping("/4_boardWrite")
	public String writeView() {
		log.info("글쓰기 페이지 요청");
		 return "html/board/4_boardWrite";
	}
	
	@GetMapping("/4_service")
	public String serviceView() {
		log.info("서비스 페이지 요청");
		 return "html/board/4_service";
	}
	
	//마이페이지 > 내 게시글&내 댓글
			@GetMapping("myPage/myActivities")
			public String selectMyBoardByNo(Model model, 
					@ModelAttribute Board board,
					@SessionAttribute(name= "loginMember", required = false) Member loginMember) {
				    log.info("내 활동 조회");
				    
				    if(loginMember == null ) {
				    	model.addAttribute("msg", "잘못된 접근입니다.");
						model.addAttribute("location", "/");
						return "common/msg";
					}
					
					log.info("내 활동 실행");
					List<Board> list = service.selectMyBoardByNo(loginMember.getU_no());

					System.out.println(loginMember);
					System.out.println(list.toString());
					
					List<Reply> list2 = service.selectMyReplyByNo(loginMember.getU_no());
					model.addAttribute("list",list);
					model.addAttribute("list2",list2);
				    return "html/myPage/5_myPage-activities";
			}
	
}













