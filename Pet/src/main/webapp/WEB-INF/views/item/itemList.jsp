<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pet</title>
<style type="text/css">
	#breadcrumb{
		float:right;
	}
	p {
		text-align: center;
	}
	.code{
		text-align: center;
	}
	.btn-secondary{
		height: 25px;
		font-size:12px; 
	}
	.img-thumbnail, .thumbnail {
	    box-shadow: 0 1px 2px rgba(0,0,0,.075);
	    border: 0px;
	}
	.thumbImg{
		width: 250px; 
		height: auto;
	}
	
</style>
</head>
<body>
<div class="container">
	<p>상품 목록</p>
	<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb" id="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="/Pet">Home</a></li>
	    <li class="breadcrumb-item active" aria-current="page">상품 목록</li>
	  </ol>
	</nav>
	<br /><br />
	<div class="code">
		<div class="code1" style="margin-bottom: 5px;">
			<input type="radio" class="btn-check" name="options1" id="1_option1" autocomplete="off">
			<label class="btn btn-secondary" for="1_option1">대형</label>
			<input type="radio" class="btn-check" name="options1" id="1_option2" autocomplete="off">
			<label class="btn btn-secondary" for="1_option2">중형</label>	
			<input type="radio" class="btn-check" name="options1" id="1_option3" autocomplete="off">
			<label class="btn btn-secondary" for="1_option3">소형</label>
		</div>
		<div class="code2" style="margin-bottom: 5px;">
			<input type="radio" class="btn-check" name="options2" id="2_option1" autocomplete="off">
			<label class="btn btn-secondary" for="2_option1">닭</label>
			<input type="radio" class="btn-check" name="options2" id="2_option2" autocomplete="off">
			<label class="btn btn-secondary" for="2_option2">연어</label>	
			<input type="radio" class="btn-check" name="options2" id="2_option3" autocomplete="off">
			<label class="btn btn-secondary" for="2_option3">소고기</label>
			<input type="radio" class="btn-check" name="options2" id="2_option4" autocomplete="off">
			<label class="btn btn-secondary" for="2_option4">오리</label>                                                          
			<input type="radio" class="btn-check" name="options2" id="2_option5" autocomplete="off">
			<label class="btn btn-secondary" for="2_option5">그 외</label>
		</div>
		<div class="code3">
			<input type="radio" class="btn-check" name="options3" id="3_option1" autocomplete="off">
			<label class="btn btn-secondary" for="3_option1">건식</label>
			<input type="radio" class="btn-check" name="options3" id="3_option2" autocomplete="off">
			<label class="btn btn-secondary" for="3_option2">습식</label>	
		</div>
	</div>
	<br /><br />
	<div class="row" style="width:1100px; margin: auto;">
	  <c:forEach items="#" var="cateList">
	   	<div class="col-xs-6 col-md-3">
	   		<div class="thumbnail">
	   		<a href="#">
			   <img id="indexItemImg" alt="이미지" src="images/none.png" class="thumbImg"/>
	   		</a>
	   		<a href="#">
		   		<p style="padding:10px;  text-align: center; margin-bottom: 0px;">상품이름</p>
		   	</a>
		   		<p style="padding:10px;  text-align: center;">상품가격</p>
	   		</div>
	   	</div>
	  </c:forEach>		
	</div>
	
</div>
</body>
</html>