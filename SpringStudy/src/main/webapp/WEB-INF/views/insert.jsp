<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<style type="text/css">
	form{
		padding-left: 10%;
		padding-right: 10%;
		padding-top : 50px;
	}
</style>
</head>
<body>
	<form class="row g-3" action="/board/insert" method="POST">
		<input type="hidden" name="writer" value="testName"><!-- 나중에 user name을 가져와서 value를 변경해줘야한다. -->
		<div class="row mb-3">
			<input type="text" class="form-control form-control-lg"	placeholder="제목" name= "title" required>
		</div>
		<div class="row mb-3">
			<textarea rows="20" class="form-control form-control-lg" placeholder="내용" name="content"></textarea>
		</div>
		<div class="row justify-content-between">
			<button class="btn btn-primary col-1" type="submit">Submit</button>
			<button class="btn btn-danger col-1" type="button" onclick="window.history.back()">Cancel</button>
		</div>
	</form>
</body>
</html>