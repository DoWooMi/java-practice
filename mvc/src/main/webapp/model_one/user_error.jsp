<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC</title>
<style type="text/css">
body {
	text-align: center;
}
.message {
	color: red;
	font-size: 1.5em;
}
</style>
</head>
<body>
	<h1>에러페이지</h1>
	<hr>
	<p class="message">프로그램 실행에 예기치 못한 오류가 발생 하였거나 비정상적 방법으로
	프로그램을 요청하여 오류가 발생 하였습니다.</p>
	<button type="button" onclick="location.href='loginForm.do';">로그인 페이지 이동</button>
</body>
</html>