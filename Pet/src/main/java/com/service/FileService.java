package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.FileDAO;

@Service
public class FileService {
	@Autowired
	FileDAO dao;
}
