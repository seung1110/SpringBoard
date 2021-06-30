<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 디자인을 위한 bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
<!-- jqeury -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {

		$("button.cancel").on("click", function() {
			//취소 버튼 클릭 시
			window.location.href="/board/list/detail?bno="+$("input[name=bno]").val();
		});

		$("button.modify").on("click", function() {
			//수정 버튼 클릭 시
			$("form").attr("action","/board/modify");
			$("form").submit();			
		});
		
		$("button.delete").on("click", function() {
			//삭제 버튼 클릭 시
			$("form").attr("action","/board/remove");
			$("form").submit();			
		});
	});
</script>
<style type="text/css">
	form{
		padding-left: 10%;
		padding-right: 10%;
		padding-top : 50px;
	}
	button{
		padding-right: 15px;
		
	}
</style>
</head>
<body>
	<div class="board">
		<c:if test="${board != null}">
			<form class="row g-3" action="" method="POST">
				<input type="hidden" value="${board.bno}" name="bno">
				<div class="row mb-3">
					<input type="text" class="form-control form-control-lg"
						 name="title" value="${board.title}" required>
				</div>
				<div class="row mb-3">
					<textarea rows="20" class="form-control form-control-lg" 
					name="content">${board.content}</textarea>
				</div>
				<div>
					<button class="btn btn-secondary cancel" type="button">취소</button>
					<button class="btn btn-primary modify" type="button">수정</button>
					<button class="btn btn-danger delete" type="button">삭제</button>
				</div>
			</form>
		</c:if>

	</div>
</body>
</html>