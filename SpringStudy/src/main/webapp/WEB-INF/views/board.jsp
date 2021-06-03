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
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
<style type="text/css">
	div.board{
		padding-left: 10%;
		padding-right: 10%;
	}
	span.sub{
		float:right;
		font-size: 14px;
		color: lightgray;
		margin-left: 15px;
		margin-top: 20px;
	}
	#title{
		font-size: 30px;
	}

</style>
</head>
<body>
<div class="board">
	<c:if test="${board != null}">
			<table class="table">
				<thead>
					<tr>
						<th><span id="title">${board.title}</span><span class="sub">${board.regDate}</span><span
							class="sub">${board.writer}</span></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<div id="content">${board.content}</div>
						</td>
					</tr>
					<tr>
						<td>
							<button class="btn btn-secondary list">목록</button>
							<button class="btn btn-primary update">수정</button>
							<button class="btn btn-danger delete">삭제</button>
						</td>
					</tr>
				</tbody>
			</table>
		</c:if>
</div>
</body>
</html>