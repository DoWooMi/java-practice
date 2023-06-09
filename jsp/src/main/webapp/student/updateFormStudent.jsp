<%@page import="xyz.itwill.dto.StudentDTO"%>
<%@page import="xyz.itwill.dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 학생목록 출력페이지(displayStudent.jsp)에서 전달받은 학생번호를 반환받아 STUDENT 테이블에
저장된 해당 학생번호의 학생정보를 검색하여 입력태그의 초기값으로 설정하고 사용자로부터 변경값을
입력받기 위한 JSP 문서 --%>
<%-- => [학생변경]를 클릭한 경우 학생정보 변경페이지(updateStudent.jsp)로 이동 - 입력값 전달 --%>
<%-- => [학생목록]을 클릭한 경우 학생목록 출력페이지(displayStudent.jsp)로 이동 --%>
<%
//비정상적인 요청에 대한 응답 처리
	if(request.getParameter("no")==null) {
		response.sendError(HttpServletResponse.SC_BAD_REQUEST);
		return;
	}
	//전달값을 반환받아 저장
	int no=Integer.parseInt(request.getParameter("no"));
	
	//학생번호를 전달받아 STUDENT 테이블에 저장된 해당 학생번호의 학생정보를 검색하여 반환하는
	//DAO 클래스의 메소드 호출
	StudentDTO student=StudentDAO.getDAO().selectStudent(no);
	
	if(student==null) {//검색된 학생정보가 없는 경우 - 비정상적인 요청
		response.sendError(HttpServletResponse.SC_BAD_REQUEST);
		return;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP</title>   
</head>
<body>
	<h1 align="center">학생정보 변경</h1>
	<hr>
	<%-- 학생정보 변경페이지(updateStudent.jsp) 요청시 학생번호(식별자)를 전달해야 되지만
	학생번호는 변경하지 못하도록 설정 --%>
	<%-- => 입력태그의 readonly 속성을 사용하여 초기값을 변경하지 못하도록 설정 --%>
	<%-- => 입력태그의 타입을 [hidden]으로 설정하여 초기값을 전달하도록 설정 --%>
	<form name="studentForm">
	<input type="hidden" name="no" value="<%=student.getNo()%>">
	<table align="center" border="1" cellpadding="1" cellspacing="0" width="300">
		<tr height="40">
			<th bgcolor="yellow" width="100">학생번호</th>
			<td width="200" align="center">
				<%-- <input type="text" name="name" value="<%=student.getNo() %>" readonly="readonly"> --%>
				<%=student.getNo()%>
			</td>
		</tr>
		<tr height="40">
			<th bgcolor="yellow" width="100">이름</th>
			<td width="200" align="center">
				<input type="text" name="name" value="<%=student.getName() %>">
			</td>
		</tr>
		<tr height="40">
			<th bgcolor="yellow" width="100">전화번호</th>
			<td width="200" align="center">
				<input type="text" name="phone" value="<%=student.getPhone() %>">
			</td>
		</tr>
		<tr height="40">
			<th bgcolor="yellow" width="100">주소</th>
			<td width="200" align="center">
				<input type="text" name="address" value="<%=student.getAddress() %>">
			</td>
		</tr>
		<tr height="40">
			<th bgcolor="yellow" width="100">생년월일</th>
			<td width="200" align="center">
				<input type="text" name="birthday" value="<%=student.getBirthday().substring(0, 10) %>">
			</td>
		</tr>
		<tr height="40">
			<td width="200" colspan="2" align="center">
				<input type="button" value="학생변경" onclick="submitCheck();">
				<input type="reset" value="초기화">
				<input type="button" value="학생목록" onclick="location.href='displayStudent.jsp';">
			</td>
		</tr>
	</table>
	</form>
	<script type="text/javascript">
	studentForm.num.focus();
	
	function submitCheck() {
		if(studentForm.name.value=="") {
			alert("이름을 입력해 주세요.");
			studentForm.name.focus();
			return;
		}
		if(studentForm.phone.value=="") {
			alert("전화번호을 입력해 주세요.");
			studentForm.phone.focus();
			return;
		}
		if(studentForm.address.value=="") {
			alert("주소을 입력해 주세요.");
			studentForm.address.focus();
			return;
		}
		if(studentForm.birthday.value=="") {
			alert("생년월일을 입력해 주세요.");
			studentForm.birthday.focus();
			return;
		}
		studentForm.method="POST";
		studentForm.action="updateStudent.jsp";
		studentForm.submit();
	} 
	</script>
</body>
</html>