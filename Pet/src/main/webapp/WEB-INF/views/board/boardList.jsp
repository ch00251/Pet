<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PetClub</title>
<style type="text/css">
	#breadcrumb{
		float:right;
	}
	.form-select {
		width: 95.85px;
		height: 38.21px;
		float: left;
		margin-right:10px;
	}
	p {
		text-align: center;
	}
	table {
	    width: 100%;
	    border-top: 1px solid #444444;
	    border-collapse: collapse;
	}
	th, td {
	    border-bottom: 1px solid #444444;
	    padding: 10px;
	}
	td > a{
		color: black;
		text-decoration: none;
	}
</style>
</head>
<body>
<div class="container">
<p>게시판</p>
<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb" id="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/Pet">Home</a></li>
    <li class="breadcrumb-item active" aria-current="page">게시판</li>
  </ol>
</nav>
<br /><br />
<c:if test="${!empty login }">
	<a href="boardInsertForm" class="btn btn-outline-dark" style="float: right;">새글 작성</a>
</c:if>
<!-- select 기능 -->
<form action="targetSelect">
<select class="form-select" aria-label="Default select example" name="searchName">
  <option selected>전체</option>
  <option value="dog">강아지</option>
  <option value="cat">고양이</option>
</select>
</form>
<input type="submit" value="검색" style="width: 60px; height: 38px;" class="btn btn-outline-dark"/>
<br /><br />
<table style="width:100%;">
	<thead>
		<tr>
			<th>글번호</th>
			<th width="50%">제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="x" items="${boardList }">
		<tr>
			<td>${x.num }</td>
			<td><a href="loginCheck/boardRetrieve?num=${x.num }">${x.title }</a></td>
			<td>${x.userid }</td>
			<td>${x.regdate }</td>
			<td>${x.viewCount }</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</div>
</body>
</html>