package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dto.FileDTO;
import com.service.FileService;

@Controller
public class FileController {
	@Autowired
	FileService service;
	
	//자료실 리스트 불러오기
	@RequestMapping(value="/fileList")
	public String fileList(FileDTO dto, HttpSession session) {
		List<FileDTO> list=service.fileList(dto);
		System.out.println("fileList:"+list);
		session.setAttribute("fileList", list);
		return "fileList";
	}
}
