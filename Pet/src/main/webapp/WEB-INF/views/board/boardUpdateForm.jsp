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
	#userid{
		margin-left: 16px;
		margin-bottom: 5px;
	}
	#content{
		display: none;
		width: 100%;
		height: 400px;
	}
	#cateAni{
		width: 190.21px;
		height: 29.95px;
		margin-bottom: 5px;
	}
	#titlelabel{
		margin-right: 15px;
	}
	#title{
		margin-left: 17px;
	}
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
	<p>글 수정 페이지입니다.</p>
	<form action="loginCheck/boardUpdate" method="get">
	<input type="hidden" value="${board.num }" name="num">
	<input type="hidden" value="${board.regdate }" name="regdate">
	<input type="hidden" value="${board.viewCount }" name="viewCount">
		<div>
			<label for="writer">작성자</label>
			<input type="text" id="userid" name="userid" value="${board.userid }" disabled/>
		</div>
		<div>
			<label for="cateAni">카테고리</label>
			<select id="cateAni" name="cateAni">
				<option value="all"
				<c:if test="${board.cateAni=='all' }">selected</c:if>
				>전체</option>
				<option value="dog"
				<c:if test="${board.cateAni=='dog' }">selected</c:if>
				>강아지</option>
				<option value="cat"
				<c:if test="${board.cateAni=='cat' }">selected</c:if>
				>고양이</option>
			</select>
		</div>
		<div>
			<label id="titlelabel" for="title">제목</label>
			<input type="text" id="title" name="title" value="${board.title }"/>
		</div>
		<div>
			<label for="content">내용</label>
			<textarea name="content" id="content" cols="30" rows="10">${board.content }</textarea>
		</div>
		<div class="bottom">
			<button class="btn btn-outline-dark" type="submit" onclick="submitContents(this);">수정</button>
			<button class="btn btn-outline-dark" type="reset">취소</button>
		</div>
	</form>
</div>
<%--
	[ SmartEditor 를 사용하기 위한 설정 ]
	
	1. WebContent 에 SmartEditor  폴더를 복사해서 붙여 넣기
	2. WebContent 에 upload 폴더 만들어 두기
	3. WebContent/WEB-INF/lib 폴더에 
	   commons-io.jar 파일과 commons-fileupload.jar 파일 붙여 넣기
	4. <textarea id="content" name="content"> 
	   content 가 아래의 javascript 에서 사용 되기때문에 다른 이름으로 바꾸고 
	      싶으면 javascript 에서  content 를 찾아서 모두 다른 이름으로 바꿔주면 된다. 
	5. textarea 의 크기가 SmartEditor  의 크기가 된다.
	6. 폼을 제출하고 싶으면  submitContents(this) 라는 javascript 가 
	      폼 안에 있는 버튼에서 실행되면 된다.
 --%>
<!-- SmartEditor 에서 필요한 javascript 로딩  -->
<script src="${pageContext.request.contextPath }/SmartEditor/js/HuskyEZCreator.js"></script>
<script>
	var oEditors = [];
	
	//추가 글꼴 목록
	//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
	
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "content",
		sSkinURI: "${pageContext.request.contextPath}/SmartEditor/SmartEditor2Skin.html",	
		htParams : {
			bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
			//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
			fOnBeforeUnload : function(){
				//alert("완료!");
			}
		}, //boolean
		fOnAppLoad : function(){
			//예제 코드
			//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
		},
		fCreator: "createSEditor2"
	});
	
	function pasteHTML() {
		var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
		oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
	}
	
	function showHTML() {
		var sHTML = oEditors.getById["content"].getIR();
		alert(sHTML);
	}
		
	function submitContents(elClickedObj) {
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
		
		// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("content").value를 이용해서 처리하면 됩니다.
		
		try {
			elClickedObj.form.submit();
		} catch(e) {}
	}
	
	function setDefaultFont() {
		var sDefaultFont = '궁서';
		var nFontSize = 24;
		oEditors.getById["content"].setDefaultFont(sDefaultFont, nFontSize);
	}
</script>
</body>
</html>65                  744444444444