package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.BoardDTO;

@Repository
public class BoardDAO {
	@Autowired
	SqlSessionTemplate template;
	public List<BoardDTO> boardList(BoardDTO dto) {
		// TODO Auto-generated method stub
		return template.selectList("BoardMapper.boardList", dto);
	}
	public BoardDTO boardRetrieve(int num) {
		// TODO Auto-generated method stub
		return template.selectOne("BoardMapper.boardRetrieve", num);
	}
	public int addViewCount(int num) {
		// TODO Auto-generated method stub
		return template.update("BoardMapper.addViewCount", num);
	}
	public void boardInsert(BoardDTO dto) {
		// TODO Auto-generated method stub
		template.insert("BoardMapper.boardInsert", dto);
	}
	public void boardUpdate(BoardDTO dto) {
		// TODO Auto-generated method stub
		template.update("BoardMapper.boardUpdate", dto);
	}
	public void boardDelete(int num) {
		// TODO Auto-generated method stub
		template.delete("BoardMapper.boardDelete", num);
	}
	public List<BoardDTO> selectList(String searchName) {
		// TODO Auto-generated method stub
		return template.selectList("BoardMapper.selectList", searchName);
	}

}
