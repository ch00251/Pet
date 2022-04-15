package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.BoardDTO;
import com.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	
	//게시판 리스트 불러오기
	@RequestMapping(value="/boardList")
	public String boardList(BoardDTO dto, HttpSession session) {
		List<BoardDTO> list=service.boardList(dto);
		System.out.println("boardList:"+list);
		session.setAttribute("boardList", list);
		return "boardList";
	}
}
