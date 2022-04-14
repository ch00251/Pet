<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pet</title>
<jsp:include page="total.jsp"></jsp:include>
</head>
<body>
<div class="container">
	<jsp:include page = "common/top.jsp" flush = "true"></jsp:include>
	<br /><br />
	<jsp:include page = "common/menu.jsp" flush = "true"></jsp:include>
	<br />
	<jsp:include page="board/reviewList.jsp" flush="true"></jsp:include>
</div>
</body>
</html>