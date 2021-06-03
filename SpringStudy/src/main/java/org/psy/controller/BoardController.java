package org.psy.controller;

import java.util.List;

import org.psy.domain.BoardVO;
import org.psy.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("board/*")
@Log4j
public class BoardController {
	
	@Setter(onMethod_=@Autowired)
	private BoardService service;
	
	
	@GetMapping(value="/list")
	public String boardList(Model model){
		model.addAttribute("list",service.getList());
		return "list";
	}
	
	@GetMapping(value="/insert")
	public String insertBoardPage(){
		return "insert";
	}
	
	@PostMapping(value="/insert")
	public String insertBoard(BoardVO vo){
			service.register(vo);
		return "redirect:list";
	}
	
	@GetMapping(value="/list/detail")
	public String detailBoard(@RequestParam("bno")int bno, Model model){
		model.addAttribute("board",service.get(bno));
		return "board";
	}
}
