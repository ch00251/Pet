<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="total.jsp"></jsp:include>
</head>
<%
	String mesg=(String)session.getAttribute("mesg");
	if(mesg!=null){
%>
	<script type="text/javascript">
		alert("<%=mesg%>");
	</script>
<% 
	session.removeAttribute("mesg");
	}
%>
<body>
<div class="container">
<jsp:include page="common/top.jsp" flush="true"/><br>
<br />
<jsp:include page="common/menu.jsp" flush="true"/>
<br>
<jsp:include page="member/loginForm.jsp" flush="true"/>
</div>
</body>
</html>