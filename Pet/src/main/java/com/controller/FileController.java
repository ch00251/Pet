package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.service.FileService;

@Controller
public class FileController {
	@Autowired
	FileService service;
}
