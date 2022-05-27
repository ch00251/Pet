package com.dto;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("FileDTO")
public class FileDTO {
	private int num;
	private String writer;
	private String title;
	private String orgFileName;
	private String saveFileName;
	private long fileSize;
	private int downCount;
	private String regdate;
	/*
	 * 스프링에서 파일 업로드 처리를 하기 위한 필드 
	 *  <input type="file" name="myFile"/>
	 *  name 속성의 value와 같은 필드명으로
	 *  MultipartFile type의 필드를 선언해야 한다.
	 */
	private MultipartFile myFile;
	public FileDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getOrgFileName() {
		return orgFileName;
	}
	public void setOrgFileName(String orgFileName) {
		this.orgFileName = orgFileName;
	}
	public String getSaveFileName() {
		return saveFileName;
	}
	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	public int getDownCount() {
		return downCount;
	}
	public void setDownCount(int downCount) {
		this.downCount = downCount;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public MultipartFile getMyFile() {
		return myFile;
	}
	public void setMyFile(MultipartFile myFile) {
		this.myFile = myFile;
	}
	@Override
	public String toString() {
		return "FileDTO [num=" + num + ", writer=" + writer + ", title=" + title + ", orgFileName=" + orgFileName
				+ ", saveFileName=" + saveFileName + ", fileSize=" + fileSize + ", downCount=" + downCount
				+ ", regdate=" + regdate + ", myFile=" + myFile + "]";
	}
}
