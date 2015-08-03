package com.tracker.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tracker.model.dto.Board;
import com.tracker.model.dto.BoardComment;
import com.tracker.service.OracleBoardService;

@Controller
@RequestMapping(value="board")
public class BoardController {
	
	private OracleBoardService boardService;
	@Autowired
	@Qualifier("boardService")
	public void setBoardService(OracleBoardService boardService) {
		this.boardService = boardService;
	}
	
	@RequestMapping(value = "list.action", method = RequestMethod.GET)
	public String getBoardList() {
		
		return "/board/boardlist";
	}
	
	@RequestMapping(value = "listjason.action")
	@ResponseBody
	public  List<Board> getBoardListJson() {
		
		List<Board> boards = boardService.getBoardList();
				
		return boards;
	}
	@RequestMapping(value = "write.action", method = RequestMethod.GET)
	public String writeForm() {
		
		return "board/writeform";
	}
	@RequestMapping(value = "write.action", method = RequestMethod.POST)
	public String write(@ModelAttribute Board board) {
		
		boardService.insertBoard(board);
		return "redirect:/board/boardlist.action";
	}
	
	@RequestMapping(value = "view.action", method = RequestMethod.GET)
	public String view(@RequestParam("boardno") int boardNo) {
		
		return "/board/view?boardno=" + boardNo;
	}
	
	@RequestMapping(value = "viewjason.action")
	@ResponseBody
	public Board getBoardListByBoardNoJason(int boardNo) {
		
		Board board = boardService.getBoardByBoardNo(boardNo);
		
		return board;
	}
	
	@RequestMapping(value = "update.action", method = RequestMethod.GET)
	public String edit(@RequestParam("boardno") int boardNo, Model model) {
		
		Board board = boardService.getBoardByBoardNo(boardNo);
		model.addAttribute("boardno", boardNo);
		
		return "board/updateform";
	}
	
	public String update(@ModelAttribute Board board, @RequestParam("boardno") int boardNo, Model model) {
		
		boardService.updateBoard(board);
		model.addAttribute("boardno", boardNo);
		
		return "redirect:/board/view.action?boardno=" + boardNo;
	}
	
	public String delete(@RequestParam("boardno") int boardNo) {
		
		boardService.deleteBoard(boardNo);
		
		return "redirect:/board/list.action";
	}
	
	@RequestMapping(value = "commentwrite.action", method = RequestMethod.GET)
	public String commentWriteForm() {
		
		return "board/writeform";
	}
	@RequestMapping(value = "commentwrite.action", method = RequestMethod.POST)
	public String commentWrite(@ModelAttribute BoardComment comment, @RequestParam("boardno") int boardNo, Model model) {
		
		boardService.insertBoardComment(comment);
		model.addAttribute("boardno", boardNo);
		
		return "redirect:/board/boardlist.action=" + boardNo;
	}
	
	@RequestMapping(value = "commentupdate.action", method = RequestMethod.GET)
	public String commentEdit(@RequestParam("boardno") int boardNo,  Model model) {
		
		Board board = boardService.getBoardByBoardNo(boardNo);
		model.addAttribute("boardno", boardNo);
		
		return "board/updateform";
	}
	
//	public String commentUpdate(@ModelAttribute BoardComment comment, @RequestParam("boardno") int boardNo, Model model) {
//		
//		boardService.updateBoard(board);
//		model.addAttribute("boardno", boardNo);
//		
//		return "redirect:/board/view.action?boardno=" + boardNo;
//	}
	
	public String commentDelete(@RequestParam("boardno") int boardNo) {
		
		boardService.deleteBoard(boardNo);
		
		return "redirect:/board/list.action";
	}
	
}
