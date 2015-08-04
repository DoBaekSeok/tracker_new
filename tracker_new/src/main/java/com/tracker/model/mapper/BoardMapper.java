package com.tracker.model.mapper;

import java.util.List;

import com.tracker.model.dto.Board;
import com.tracker.model.dto.BoardComment;

public interface BoardMapper {
	
	void insertBoard(Board board);
	
	List<Board> getBoardList(String boardkind);

	Board getBoardByBoardNo(int boardNo);
	
	void updateBoard(Board board);
	
	void deleteBoard(int boardNo);
	
	void insertBoardComment(BoardComment comment);
	
	List<BoardComment> getCommentListByBoardNo(int boardNo);
	
	void updateBoardComment(BoardComment comment);
	
	void deleteBoardComment(int commentNo);
	
}
