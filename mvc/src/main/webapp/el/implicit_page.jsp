<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC</title>
</head>
<body>
	<h1>EL 내장객체 - PageContext</h1>
	<hr>
	<h3>EL 미사용</h3>
	<%-- request 내장객체 = HttpServletRequest 객체 --%>
	<%-- 
	<p>컨텍스트 경로 = <%=request.getContextPath() %></p>
	<p>요청자원의 URI 주소 = <%=request.getRequestURI() %></p>
	--%>
	<%-- PageContext.getRequest() : 웹프로그램의 ServletRequest 객체를 반환하는 메소드 --%>
	<%-- => ServletRequest 객체(부모)를 HttpServletRequest 객체(자식)로 형변환하면 
	HttpServletRequest 객체(자식)의 메소드 호출 가능 --%>
	<p>컨텍스트 경로 = <%=((HttpServletRequest)pageContext.getRequest()).getContextPath() %></p>
	<p>요청자원의 URI 주소 = <%=((HttpServletRequest)pageContext.getRequest()).getRequestURI() %></p>
	<hr>
	<h3>EL 사용</h3>
	<%-- EL 표현식에서 pageContext 내장객체를 사용하여 PageContext 객체의 메소드 호출 가능 --%>
	<%-- => Getter 메소드는 EL 표현식에서 이름을 사용하면 자동 호출 가능 --%>
	<%-- <p>컨텍스트 경로 = ${pageContext.getRequest().getContextPath() }</p> --%>
	<p>컨텍스트 경로 = ${pageContext.request.contextPath }</p>
	<p>요청자원의 URI 주소 = ${pageContext.request.requestURI }</p>
</body>
</html>