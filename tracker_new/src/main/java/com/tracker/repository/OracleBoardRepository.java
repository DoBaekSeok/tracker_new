package com.tracker.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.tracker.model.dto.Board;
import com.tracker.model.dto.BoardComment;
import com.tracker.model.mapper.BoardMapper;

@Repository(value="boardRepository")
public class OracleBoardRepository implements BoardRepository{
	
	private BoardMapper boardMapper;
	@Autowired
	@Qualifier("boardMapper")
	public void setBoardMapper(BoardMapper boardMapper) {
		this.boardMapper = boardMapper;
	}
	
	@Override
	public void insertBoard(Board board) {
		boardMapper.insertBoard(board);
	}
	@Override
	public List<Board> getBoardList(String boardKind) {
		List<Board> boards = boardMapper.getBoardList(boardKind);
		return boards;
	}
	@Override
	public Board getBoardByBoardNo(int boardNo) {
		Board board = boardMapper.getBoardByBoardNo(boardNo);
		return board;
	}
	@Override
	public void updateBoard(Board board) {
		boardMapper.updateBoard(board);
	}
	@Override
	public void deleteBoard(int boardNo) {
		boardMapper.deleteBoard(boardNo);
	}
	@Override
	public void insertBoardComment(BoardComment comment) {
		boardMapper.insertBoardComment(comment);
	}
	@Override
	public List<BoardComment> getCommentListByBoardNo(int boardNo) {
		List<BoardComment> comments = boardMapper.getCommentListByBoardNo(boardNo);
		return comments;
	}
	@Override
	public void updateBoardComment(BoardComment comment){
		boardMapper.updateBoardComment(comment);
	}
	@Override
	public void deleteBoardComment(int commentNo) {
		boardMapper.deleteBoardComment(commentNo);
	}
}
