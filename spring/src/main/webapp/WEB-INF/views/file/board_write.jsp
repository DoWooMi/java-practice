<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SPRING</title>
</head>
<body>
	<h1>자료실(입력페이지)</h1>
	<hr>
	<form method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="writer"></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type="text" name="subject"></td>
		</tr>
		<tr>
			<td>파일</td>
			<td><input type="file" name="file"></td>
		</tr>
		<tr>
			<td colspan="2"><button type="submit">파일전송</button></td>
		</tr>
	</table>
	</form>
</body>
</html>