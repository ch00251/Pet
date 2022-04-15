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
	th {

    }
</style>
</head>
<body>
<div class="container">
<p>게시판</p>
<a href="#" class="btn btn-outline-dark">새글 작성</a>
<select class="form-select" aria-label="Default select example">
  <option selected>전체</option>
  <option value="1">강아지</option>
  <option value="2">고양이</option>
</select>
<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb" id="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/Pet">Home</a></li>
    <li class="breadcrumb-item active" aria-current="page">게시판</li>
  </ol>
</nav>
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
			<td><a href="#">${x.title }</a></td>
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