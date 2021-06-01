<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- jstl을 위한 taglib 추가 -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
<style type="text/css">
	tbody tr:hover{ /* 마우스가 올려져 있을 때 적용 */
		background: lightgray;
	}
</style>
<script type="text/javascript">
	$(function(){
		// tr 클릭 시 페이지 이동 설정
		$("tbody tr").on("click",function(){
			window.location.href="/board/bno="+$(this).find("td").html();
		})
		
		$("#newBtn").on("click",function(){
			window.location.href="/board/insert";
		});
		
		$("td.regDate").each(function(){
			console.log($(this).html());
		})
	});
</script>
</head>
<body>
	<div class="container">
		<div class="col">
			<h1>게시판</h1>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>게시일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="board" items="${list}">
					<!-- model로 받아온 데이터 출력 -->
					<tr>
						<td>${board.bno}</td>
						<td>${board.title}</td>
						<td>${board.writer}</td>
						<td class="regDate">${board.regDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<button class="btn btn-primary" id="newBtn">작성</button>
	</div>
</body>
</html>