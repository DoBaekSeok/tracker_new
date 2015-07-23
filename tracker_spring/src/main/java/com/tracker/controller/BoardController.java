package com.tracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tracker.model.dto.Board;
import com.tracker.service.BoardService;

@Controller
@RequestMapping(value="board")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "boardlist.action", method = RequestMethod.GET)
	public  String getBoardList() {
		
		return "board/list";
	}
	@RequestMapping(value = "boardwrite.action", method = RequestMethod.GET)
	public String writeBoard() {
		
		return "f";
	}
	@RequestMapping(value = "write.action", method = RequestMethod.POST)
	public String writeForm(@ModelAttribute Board board) {
		
		boardService.insertBoard(board);
		return "board/list.action";
	}
	
	@RequestMapping(value = "view.action", method = RequestMethod.GET)
	public String getboardByBoardNo(@RequestParam("boardno") int boardNo) {
		
		boardService.getBoardByBoardNo(boardNo);
		return "board/view";
	}
	
	@RequestMapping(value = "update.action", method = RequestMethod.GET)
	public String update(@RequestParam("boardno") int boardNo) {
		
		return "board/updateform";
	}
}
