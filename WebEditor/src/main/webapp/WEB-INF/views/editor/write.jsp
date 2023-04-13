<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../resources/se2/js/service/HuskyEZCreator.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
$( () => {

	$("#btnWrite").click( function() {
		console.log("btnWrite click")

		// 작성된 내용을 <textarea>에 적용하기
		updateContent()
		
		// 폼 제출
		$("form").submit()
	})

})
function updateContent() {
	
	// 스마트 에디터에 작성된 내용을 textarea#content에 반영한다
	oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", [])
	
}

</script>


</head>
<body>

<h1>글 작성</h1>
<hr>

<form action="./write" method="POST">

	<textarea id="content" name="data"></textarea>

</form>

<button id="btnWrite">작성</button>

<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "content", // 에디터가 적용될 <textarea>의 id속성값
	sSkinURI : "../resources/se2/SmartEditor2Skin.html",
	fCreator : "createSEditor2"
})
</script>
</body>
</html>