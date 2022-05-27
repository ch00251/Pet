<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pet</title>
</head>
<body>
<div class="container">
	<form name="itemRetrieveForm" action="#">
		<input type="hidden" name="itemImg"/>
		<input type="hidden" name="itemNum"/>
		<input type="hidden" name="itemName"/>
		<input type="hidden" name="itemPrice"/>
		
		<div class="itemImg">
			<img src="#" alt="이미지" />
		</div>
		<div class="itemInfo">
			<h2>itemName</h2>
			<br />
			<div class="inputArea">
				<span>판매가</span>
				<span>itemPrice원</span>
			</div>
			<div class="cartStock">
				<span>구입 수량</span>
				<div class="num">
					<p class="cartStock">
						<button type="button" class="plus">+</button>
						<input type="number" class="numBox" min="1" value="1"/>
						<button type="button" class="minus">-</button>
						<script>
						$(".plus").click(function(){
							var num=$(".numBox").val();
							var plusNum=Number(num)+1;
						})
						$(".minus").click(function(){
							var num=$(".numBox").val();
							var minusNum=Number(num)-1;
						})
						</script>
					</p>
				</div>
			</div>
		</div>
	</form>
</div>
</body>
</html>