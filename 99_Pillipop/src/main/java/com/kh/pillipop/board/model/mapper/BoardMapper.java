package com.kh.pillipop.board.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.pillipop.board.model.vo.Board;
import com.kh.pillipop.board.model.vo.Reply;

@Mapper
public interface BoardMapper {
	List<Board> selectBoardList(RowBounds rowBounds, Map<String, String> map);
	int selectBoardCount(Map<String, String> map);
	Board selectBoardByNo(int boNo);
	int insertBoard(Board board);
	int insertReply(Reply reply);
	int updateBoard(Board board);
	int updateReadAccount(Board board);
	int deleteBoard(int boNo);
	int deleteReply(int reNo);
	
//  내 게시글 조회	
	List<Board> selectMyBoardByNo(int u_no);
//  내 댓글 조회
	List<Reply> selectMyReplyByNo(int boNo);
}
