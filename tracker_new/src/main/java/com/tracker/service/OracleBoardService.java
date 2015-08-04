package com.tracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.tracker.model.dto.Board;
import com.tracker.model.dto.BoardComment;
import com.tracker.repository.BoardRepository;

@Service(value="boardService")
public class OracleBoardService  {
		
	private BoardRepository boardRepository;
	@Autowired
	@Qualifier("boardRepository")
	public void setBoardRepository(BoardRepository boardRepository) {
		this.boardRepository = boardRepository;
	}
	
	public void insertBoard(Board board) {
		boardRepository.insertBoard(board);
	}
	public List<Board> getBoardList(String boardKind) {
		List<Board> boards = boardRepository.getBoardList(boardKind);
		return boards;
	}
	public Board getBoardByBoardNo(int boardNo) {
		Board board = boardRepository.getBoardByBoardNo(boardNo);
		return board;
	}
	public void updateBoard(Board board) {
		boardRepository.updateBoard(board);
	}
	public void deleteBoard(int boardNo) {
		boardRepository.deleteBoard(boardNo);
	}
	public void insertBoardComment(BoardComment comment) {
		boardRepository.insertBoardComment(comment);
	}
	public List<BoardComment> getCommentListByBoardNo(int boardNo) {
		List<BoardComment> comments = boardRepository.getCommentListByBoardNo(boardNo);
		return comments;
	}
	public void updateBoardComment(BoardComment comment){
		boardRepository.updateBoardComment(comment);
	}
	public void deleteBoardComment(int commentNo) {
		boardRepository.deleteBoardComment(commentNo);
	}
	
}
