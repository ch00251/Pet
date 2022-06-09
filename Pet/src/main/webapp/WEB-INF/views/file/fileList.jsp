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
	<p>자료실</p>
	<c:if test="${!empty login }">
		<a href="fileUploadForm" class="btn btn-outline-dark">파일 업로드</a>
	</c:if>
	<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb" id="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="/Pet">Home</a></li>
	    <li class="breadcrumb-item active" aria-current="page">자료실</li>
	  </ol>
	</nav>
	<br /><br />
	<table style="width:100%;">
		<thead>
			<tr>
				<th width="5%">번호</th>
				<th>작성자</th>
				<th width="30%">제목</th>
				<th>파일명</th>
				<th width="10%">파일크기</th>
				<th width="10%">다운횟수</th>
				<th width="10%">등록일</th>
				<th width="5%">삭제</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="tmp" items="${list }">
			<tr>
				<td>${tmp.num }</td>
				<td>${tmp.writer }</td>
				<td>${tmp.title }</td>
				<td>
					<a href="#">
						${tmp.orgFileName }
					</a>
				</td>
				<td>${tmp.fileSize }</td>
				<td>${tmp.downCount }</td>
				<td>${tmp.regdate }</td>
				<td>
					
				</td>
			</tr>		
		</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>