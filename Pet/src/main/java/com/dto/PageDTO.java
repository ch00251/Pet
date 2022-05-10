package com.dto;

import java.util.List;

public class PageDTO {
	private List<BoardDTO> list;//현재 페이지에 들어갈 레코드를 perPage만큼만 저장(0,1 2개의 dto가 저장됨)
	private int curPage;//현재 볼 페이지 번호 (1이 저장됨)
	private int perPage=10;//한 체이지에 보여질 목록 수
	private int totalCount;//전체레코드 갯수(13이 저장됨)
	public PageDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public List<BoardDTO> getList() {
		return list;
	}
	public void setList(List<BoardDTO> list) {
		this.list = list;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
}
