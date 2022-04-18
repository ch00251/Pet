<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pet</title>
<jsp:include page="total.jsp"></jsp:include>
<c:if test="${!empty update }">
<script>
	alert('${update}');
</script>
<%
	session.removeAttribute("update");
%>
</c:if>
</head>
</head>
<body>
<div class="container">
	<jsp:include page="common/top.jsp" flush="true"/>
	<br /><br />
	<jsp:include page="common/menu.jsp" flush="true"/>
	<br /><br />
	<jsp:include page="board/boardRetrieve.jsp" flush="true"/>
</div>
</body>
</html>