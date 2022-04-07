<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
.parent{
	width:100%;
}
.logo {
    float: center;
    width:25%;
    box-sizing: border-box;
    display:inline;
}
</style>
<div class = "parent">
	<br />
	<div class = "logo">
		<a href="/Pet"><img src="images/logo.png"></a>
	</div>
	<br />
	<div class = "button" style="float: right;">
		<!-- 로그인이 안된 경우 -->
		<c:if test="${empty login }">
			<a href="loginForm" class="login">
			<img src="images/header_login_icon.png" alt="로그인"
				onmouseover="this.src='images/header_login_icon_on.png'" 
				onmouseout="this.src='images/header_login_icon.png'">
			</a>
			<a href="#" class="join">
			<img src="images/header_join_icon.png" alt="회원가입"
				onmouseover="this.src='images/header_join_icon_on.png'" 
				onmouseout="this.src='images/header_join_icon.png'">
			</a>
		</c:if>
		<!-- 로그인이 된 경우 -->
		<c:if test="${!empty login }">
			<a href="loginCheck/logout" class="logout">
			<img src="images/header_logout_icon.png" alt="로그아웃"
				onmouseover="this.src='images/header_logout_icon_on.png'" 
				onmouseout="this.src='images/header_logout_icon.png'">
			</a>
			<a href="#" class="mypage">
			<img src="images/header_mypage_icon.png" alt="마이페이지"
				onmouseover="this.src='images/header_mypage_icon_on.png'" 
				onmouseout="this.src='images/header_mypage_icon.png'">
			</a>
		</c:if>
	</div>
</div>