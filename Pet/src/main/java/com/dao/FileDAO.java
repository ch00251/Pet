package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.FileDTO;

@Repository
public class FileDAO {
	@Autowired
	SqlSessionTemplate template;

	public List<FileDTO> fileList(FileDTO dto) {
		// TODO Auto-generated method stub
		return template.selectList("FileMapper.fileList", dto);
	}
	
}
