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
	@RequestMapping(value = "/loginCheck/boardRetrieve")
	public String boardRetrieve(@RequestParam("num") int num, HttpSession session) {
		System.out.println(num);
		BoardDTO dto=service.boardRetrieve(num);
		session.setAttribute("board", dto);
		//조회수 1증가
		int n=service.addViewCount(num);
		System.out.println(dto);
		return "redirect:../boardRetrieve?num="+dto.getNum();
	}
	
	//게시판 글 작성
	@RequestMapping(value = "/boardInsert")
	public String boardInsert(BoardDTO dto, HttpSession session) {
		service.boardInsert(dto);
		System.out.println("게시판 insert:"+dto);
		session.setAttribute("success", "등록되었습니다.");
		return "redirect:boardList";
	}

	//게시판 글 수정
	@RequestMapping(value = "/loginCheck/boardUpdate")
	public String boradUdpate(BoardDTO dto, HttpSession session) {
		service.boardUpdate(dto);
		System.out.println("업데이트 내용"+dto);
		session.setAttribute("update", "수정되었습니다");		
		return "redirect:boardRetrieve?num="+dto.getNum();	
	}
	//게시판 글 삭제
	@RequestMapping(value = "/loginCheck/boardDelete")
	public String boardDelete(int num, HttpSession session) {
		System.out.println(num);
		service.boardDelete(num);
		session.setAttribute("success", "삭제되었습니다.");
		return "redirect:../boardList";
	}
	
}

