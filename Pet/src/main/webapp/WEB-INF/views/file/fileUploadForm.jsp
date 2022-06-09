<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.bottom{
		display: table;
  		margin-left: auto;
 		margin-right: auto;
	}
	.bottom .btn{
		margin:10px;
	}
</style>
</head>
<body>
<div class="container">
	<p>파일 업로드</p>	
	 <form action="loginCheck/fileUpload" method="post" enctype="multipart/form-data">
	 	<div class="form-group">
	 		<label for="title">제목</label>
	 		<input class="form-control" type="text" name="title" id="title" />
	 	</div>
	 	<br />
	 	<div class="form-group">
	 		<label for="myFile">첨부파일</label>
	 		<input type="file" class="form-control" name="myFile" id="myFile"/>
	 	</div>
	 	<br /><br />
	 	<div class="bottom">
	 		<button class="btn btn-outline-dark" type="submit">업로드</button>
	 		<button class="btn btn-outline-dark">취소</button>
	 	</div>
	 </form>
</div>
</body>
</html>