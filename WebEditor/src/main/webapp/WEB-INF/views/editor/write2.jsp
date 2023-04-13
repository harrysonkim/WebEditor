<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script type="text/javascript">
$( () => {

	$("#show").click( () => {
		$("#note").summernote({
			height : 300,
			placeholder : "기본 보여줄 텍스트",
			focus : true
		})
	})

	// 새로고침하면 #show버튼 클릭 이벤트 발생
	$("#show").click()
	
	$("#destroy").click(function() {
		$("#note").summernote("destroy")
		$("#note").css("display","none")
	})		
	
	// div#note2에 에디터 적용하기
	$("#note2").summernote()
		
})


</script></head>
<body>

<h1>글 작성</h1>
<h3>summernote</h3>
<hr>

<form action="./write2" method="POST">

	<textarea style="display:none;" id="note" name="data"></textarea>
	<button id="btnWrite">작성</button>
	
</form>

	<button id="show">입력창 보이기</button>
	<button id="destroy">입력창 없에기</button>

<hr>

<div id="note2">

</div>

</body>
</html>