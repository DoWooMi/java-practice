<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//내장객체를 이용하여 객체를 속성값으로 저장
	// => 속성명을 이용하여 속성값을 구분 - 내장객체가 다른 경우 같은 이름의 속성명 사용 가능
	// => 내장객체에 동일한 속성명이 있는 경우 기존 속성값 대신 새로운 속성값으로 변경
	pageContext.setAttribute("pageName", "홍길동");//page Scope
	request.setAttribute("requestName", "임꺽정");//request Scope
	session.setAttribute("sessionName","전우치");//session Scope
	application.setAttribute("applicationName", "일지매");//application Scope
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>객체의 사용범위(Scope)</h1>
	<hr>
	<%
		//내장객체에 저장된 속성값을 반환받아 저장
		// => Object 타입의 객체로 반환하므로 반드시 명시적 객체 형변환 후 사용
		// => 매개변수로 전달된 속성명의 속성값이 없는 경우 null 반환
		String pageName=(String)pageContext.getAttribute("pageName");
		String requestName=(String)request.getAttribute("requestName");
		String sessionName=(String)session.getAttribute("sessionName");
		String applicationName=(String)application.getAttribute("applicationName");
	%>
	<p>pagName = <%=pageName %></p>
	<p>requestName = <%=requestName %></p>
	<p>sessionName = <%=sessionName %></p>
	<p>applicationName = <%=applicationName %></p>
</body>
</html>