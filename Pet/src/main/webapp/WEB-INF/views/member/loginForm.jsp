<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<c:if test="${!empty mesg }">
<script>
	alert('${mesg}');
</script>
</c:if>
<script type="text/javascript">
	$(document).ready(function(){
		$("form").on("submit", function(event){
			var userid=$("#userid").val();
			var passwd=$("#passwd").val();
			if(userid.length==0){
				alert("아이디를 입력하세요.");
				$("#userid").focus();
				event.preventDefault();
			}else if(passwd.length==0){
				alert("비밀번호를 입력하세요.");
				$("#passwd").focus();
				event.preventDefault();
			}
		})
	});
</script>
<style>
	.login{
		text-align: center;
	}
	#userid{
		margin-left: 16px;
		margin-bottom: 5px;
	}
	p {
		text-align: center;
	}
	#loginbtn{
		width: 262px;
	}
	.ot_link {
		display: table; 
		width: 400px;
		margin: auto;
		padding:0;
	    text-align: center;
	    margin-left: auto;
		margin-right: auto;
	}
	.ot_link li {
		list-style-type: none;
		float: left;
	}
	.ot_link li a {
	    display: block;
	    border: 1px solid #000000;
	    padding: 10px 0;
	    margin-top:10px;
	    margin-botton:10px;
	    margin-left:5px;
	    background: #fff;
	    transition: 0.2s;
	    width: 126.4px;
	}
	.icon>img{
		width: 25px;
		height: 25px;
	}
</style> 
<div class="login">
<p>로그인</p>
<br /><br />
<p>회원로그인</p>
<form action="login" method="post">
	<label for="id">아이디</label>
	<input type="text" name="userid" id="userid" /><br>
	<label for="pwd">비밀번호</label>
	<input type="password" name="passwd" id="passwd" />
<br><br />
<input id="loginbtn" class="btn btn-outline-dark" type="submit" value="로그인">
<br /><br />
<div class="item">
<ul class="ot_link">
	<li><a onclick="searchId();">
	<div class="icon"><img src="images/ico_6601.png" alt=""></div>아이디찾기</a></li>
	<li><a onclick="searchPwd();">
	<div class="icon"><img src="images/ico_6602.png" alt=""></div>비밀번호찾기</a></li>
	<li><a href="#">
	<div class="icon"><img src="images/ico_6603.png" alt=""></div>회원가입</a></li>
</ul>
<script>
	function searchId(){
		window.open("#", "searchId","width=550,height=450,top=250,left=550,resizable=no");
	}
	function searchPwd(){
		window.open("#", "searchPwd","width=550,height=450,top=250,left=550,resizable=no");
	}
</script>
</div>
</form>
</div>