package com.tracker.model.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class BoardComment {
	private int commentNo;
	private String commentWriter;
	private int boardNo;
	private String commentContent;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd HH:mm a z")
	private Date commentRegDate;
	private boolean commentDeleted;
	
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public String getCommentWriter() {
		return commentWriter;
	}
	public void setCommentWriter(String commentWriter) {
		this.commentWriter = commentWriter;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public Date getCommentRegDate() {
		return commentRegDate;
	}
	public void setCommentRegDate(Date commentRegDate) {
		this.commentRegDate = commentRegDate;
	}
	public boolean isCommentDeleted() {
		return commentDeleted;
	}
	public void setCommentDeleted(boolean commentDeleted) {
		this.commentDeleted = commentDeleted;
	}
	
}	
