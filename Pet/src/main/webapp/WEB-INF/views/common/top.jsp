<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<style>
.logo {
    float: left;
    width:25%;
    box-sizing: border-box;
    display:inline
}

.button{
    float: right;
    width:25%;
    height : 200px;
    box-sizing: border-box;
}
</style>
<div class = "parent">
	<br />
	<div class = "logo">
		<a href="/Pet"><img src="images/logo.png" style="width: "></a>
	</div>
	<br />
	<div class = "button" style="float: right;">
		<!-- 로그인이 안된 경우 -->
		<c:if test="${empty login }">
			<a href="#" class="login">
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
			<a href="#" class="logout">
			<img src="images/header_logout_icon.png" alt="로그아웃"
				onmouseover="this.src='images/header_logout_icon_on.png'" 
				onmouseout="this.src='images/header_logout_icon.png'">
			</a>
			<a href="#" class="mypage">
			<img src="images/header_mypage_icon.png" alt="마이페이지"
				onmouseover="this.src='images/header_join_mypage_on.png'" 
				onmouseout="this.src='images/header_mypage_icon.png'">
			</a>
		</c:if>
	</div>
</div>