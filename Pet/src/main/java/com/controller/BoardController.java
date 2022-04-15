package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	//글 상세페이지
	@RequestMapping(value = "/boardRetrieve")
	@ModelAttribute("boardRetrieve")
	public BoardDTO boardRetrieve(@RequestParam("num") int num, HttpSession session) {
		System.out.println(num);//상품번호 넘어오나
		BoardDTO dto=service.boardRetrieve(num);
		session.setAttribute("board", dto);
		//조회수 1증가
		int n=service.addViewCount(num);
		System.out.println(dto);
		return dto;
	}
}
