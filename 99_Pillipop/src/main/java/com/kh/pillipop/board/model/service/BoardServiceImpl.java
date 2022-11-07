package com.kh.pillipop.board.model.service;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.kh.pillipop.board.model.mapper.BoardMapper;
import com.kh.pillipop.board.model.vo.Board;
import com.kh.pillipop.board.model.vo.Reply;
import com.kh.pillipop.common.util.PageInfo;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper mapper;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveBoard(Board board) {
		int result = 0;
		
		if(board.getBoNo() == 0) {
			result = mapper.insertBoard(board);
		}else {
			result = mapper.updateBoard(board);
		}
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveReply(Reply reply) {
		return mapper.insertReply(reply);
	}

	@Override
	public String saveFile(MultipartFile upfile, String savePath) {
		File folder = new File(savePath);
		
		// 저장된 경로에 폴더가 없으면 생성하는 코드
		if(folder.exists() == false) {
			folder.mkdir();
		}
		System.out.println("savePath : " + savePath);
		
		String attachment = upfile.getOriginalFilename();
		String reNameFileName = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmssSSS"))
				+ attachment.substring(attachment.lastIndexOf("."));
		String reNamePath = savePath + "/" + reNameFileName;
		
		// 업로드 된 파일 이름을 바꾸고, 실제 보조기억장치로 데이터를 저장하는 부
		try {
			upfile.transferTo(new File(reNamePath));
		} catch (Exception e) {
			return null;
		}
		return reNameFileName;
	}

	@Override
	public int getBoardCount(Map<String, String> param) {
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		String searchCate = param.get("searchCate");
		if(searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if(type.equals("title")) {
				searchMap.put("titleKeyword", searchValue);
			}else if(type.equals("content")) {
				searchMap.put("contentKeyword", searchValue);
			}else if(type.equals("writer")) {
				searchMap.put("writerKeyword", searchValue);
			}
		}
		if(searchValue != "전체") {
			searchMap.put("categoryKeyword", param.get("searchCate"));
		}
		System.out.println(searchMap);
		return mapper.selectBoardCount(searchMap);
	}

	@Override
	public List<Board> getBoardList(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		String searchCate = param.get("searchCate");
		System.out.println("searchCate : " + searchCate);
		if(searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if(type.equals("title")) {
				searchMap.put("titleKeyword", searchValue);
			}else if(type.equals("content")) {
				searchMap.put("contentKeyword", searchValue);
			}else if(type.equals("writer")) {
				searchMap.put("writerKeyword", searchValue);
			}
			
		}
		
		try {
			if(searchCate.compareTo("전체") == 0) {
				searchMap.put("categoryKeyword", null);
			}
			else {
				searchMap.put("categoryKeyword", param.get("searchCate"));
			}
		}
		catch (Exception e) {
//			e.printStackTrace();
		}
		System.out.println(searchMap.get("categoryKeyword"));
		
		return mapper.selectBoardList(rowBounds, searchMap);
	}
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public Board findByNo(int boNo) {
		Board board = mapper.selectBoardByNo(boNo);
		board.setReadAccount(board.getReadAccount() + 1); // 조회수 증가
		mapper.updateReadAccount(board);
		return board;
	}

	@Override
	public void deleteFile(String filePath) {
		File file = new File(filePath);
		if(file.exists()) {
			file.delete();
		}
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int deleteBoard(int boNo, String rootPath) {
		Board board = mapper.selectBoardByNo(boNo);
		deleteFile(rootPath+ "\\" + board.getModifiedAttachment());
		return mapper.deleteBoard(boNo);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int deleteReply(int reNo) {
		return mapper.deleteReply(reNo);
	}
	
	//내 게시글 조회	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public List<Board> selectMyBoardByNo(int u_no) {
		List<Board> board = mapper.selectMyBoardByNo(u_no);
		return board;
	}
	
	//내 댓글 조회
	@Override
	@Transactional(rollbackFor = Exception.class)
	public List<Reply> selectMyReplyByNo(int boNo) {
		List<Reply> reply = mapper.selectMyReplyByNo(boNo);
		return reply;
	}

}
