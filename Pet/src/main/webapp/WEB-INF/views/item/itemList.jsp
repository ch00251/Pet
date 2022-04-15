<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</div>
</body>
</html>