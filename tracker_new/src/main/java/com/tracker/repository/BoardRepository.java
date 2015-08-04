package com.tracker.repository;

import java.util.List;

import com.tracker.model.dto.Board;
import com.tracker.model.dto.BoardComment;

public interface BoardRepository {
	
	void insertBoard(Board board);
	
	List<Board> getBoardList(String boardKind);

	Board getBoardByBoardNo(int boardNo);
	
	void updateBoard(Board board);
	
	void deleteBoard(int boardNo);
	
	void insertBoardComment(BoardComment comment);
	
	List<BoardComment> getCommentListByBoardNo(int boardNo);
	
	void updateBoardComment(BoardComment comment);
	
	void deleteBoardComment(int commentNo);
}
