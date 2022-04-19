<%@page import="com.dto.BoardDTO"%>
<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.board{
		/* border:1px gray solid; */
		margin-left: auto; 
		margin-right: auto; 
	}
	.bottom{
		display: table;
  		margin-left: auto;
 		margin-right: auto;
	}
	ul{
		margin:0; 
		padding:0;
	}
	li{
		display: inline;
		margin-right: 10px;
	}
	th{
		width: 10%;
		border-right: 1px gray solid;
		border-bottom: 1px gray solid;
	}
	td {
	    border-bottom: 1px gray solid;
	}
	.contents{
		height: 200px;
	}
	textarea{
		width: 800px;
		height: 50px;
	}
</style>
</head>
<body>
<div class="container">
	<p style="display:table; margin-left: auto; margin-right: auto;">글 상세 페이지</p>
	<br />
	<table class="board" width="80%">
		<tr>
			<th>제목</th>
			<td>${board.title }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${board.userid }</td>
		</tr>
		<tr>
			<td colspan="2">
				<ul>
					<li>
						<strong>작성일</strong>
						<span>${board.regdate }</span>
					</li>
					<li>
						<strong>구분</strong>
						<span>${board.cateAni }</span>
					</li>
					<li>
						<strong>조회수</strong>
						<span>${board.viewCount }</span>
					</li>
				</ul>
			</td>
		</tr>
		<tr>
			<td colspan="2"><div class="contents">${board.content }</div></td>
		</tr>
	</table>
</div>
<br />
<div class="bottom">
<%
	MemberDTO d=(MemberDTO)session.getAttribute("login");
	String id=d.getUserid();
	BoardDTO dd=(BoardDTO)session.getAttribute("board");
	String userid=dd.getUserid();
	int num=dd.getNum();
	System.out.println("로그인 한 아이디:"+id);
	System.out.println("글 작성한 아이디:"+userid);
	if(id.equals(userid)){ %>
		<a class="btn btn-outline-dark" href="boardList">목록 보기</a>
		<a class="btn btn-outline-dark" href="boardUpdateForm?num=<%=num%>">수정하기</a>
		<a class="btn btn-outline-dark" href="loginCheck/boardDelete?num=<%=num%>">삭제하기</a>
	<%}else{%>
		<a class="btn btn-outline-dark" href="boardList">목록 보기</a>
	<%}%>
</div>
</body>
<br />
</html>