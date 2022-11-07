package com.kh.pillipop.board.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.kh.pillipop.board.model.vo.Board;
import com.kh.pillipop.board.model.vo.Reply;
import com.kh.pillipop.common.util.PageInfo;

public interface BoardService {
	int saveBoard(Board board);

	int saveReply(Reply reply);

	String saveFile(MultipartFile upfile, String savePath);

	int getBoardCount(Map<String, String> param);

	List<Board> getBoardList(PageInfo pageInfo, Map<String, String> param);

	Board findByNo(int boNo);

	void deleteFile(String filePath);

	int deleteBoard(int boNo, String rootPath);

	int deleteReply(int reNo);
	
//  내 게시글 조회	
	List<Board> selectMyBoardByNo(int u_no);
//  내 댓글 조회
	List<Reply> selectMyReplyByNo(int boNo);
}
