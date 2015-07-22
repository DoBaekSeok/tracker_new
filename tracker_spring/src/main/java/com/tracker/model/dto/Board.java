package com.tracker.model.dto;

import java.util.Date;
import java.util.List;

public class Board {
	private int boardNo;
	private int boardKind;
	private String boardWriter;
	private String boardTitle;
	private String boardContent;
	private Date boardRegDate;
	private boolean boardDeleted; 
	private int boardReadCount;
	
	//데이터베이스의 Board와 BoardComment 테이블 간의 1:Many 관계를 구현한 필드
	private List<BoardComment> comments;
	
	public List<BoardComment> getComments() {
		return comments;
	}
	public void setComments(List<BoardComment> comments) {
		this.comments = comments;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getBoardKind() {
		return boardKind;
	}
	public void setBoardKind(int boardKind) {
		this.boardKind = boardKind;
	}
	public String getBoardWriter() {
		return boardWriter;
	}
	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public Date getBoardRegDate() {
		return boardRegDate;
	}
	public void setBoardRegDate(Date boardRegDate) {
		this.boardRegDate = boardRegDate;
	}
	public int getReadCount() {
		return boardReadCount;
	}
	public void setReadCount(int readCount) {
		this.boardReadCount = readCount;
	}
	public boolean isBoardDeleted() {
		return boardDeleted;
	}
	public void setBoardDeleted(boolean boardDeleted) {
		this.boardDeleted = boardDeleted;
	}
	
}
