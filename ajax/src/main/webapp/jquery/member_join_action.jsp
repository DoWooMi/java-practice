<%@page import="xyz.itwill.dao.AjaxMemberDAO"%>
<%@page import="xyz.itwill.dto.AjaxMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 회원정보를 전달받아 AJAX_MEMBER 테이블에 삽입하고 회원가입 출력페이지(member_join_result.jsp)로
이동하기 위한 URL 주소를 클라이언트에게 전달하는 JSP 문서 --%>    
<%
	if(request.getMethod().equals("GET")) {
		response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
		return;
	}
	request.setCharacterEncoding("utf-8");
	//전달값을 한글로 받기 위한 요청
	
	String id=request.getParameter("id");
	String passwd=request.getParameter("passwd");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	
	AjaxMemberDTO ajaxMember=new AjaxMemberDTO();
	ajaxMember.setId(id);
	ajaxMember.setPasswd(passwd);
	ajaxMember.setName(name);
	ajaxMember.setEmail(email);
	
	AjaxMemberDAO.getDAO().insertAjaxMember(ajaxMember);
	
	response.sendRedirect("member_join_result.jsp");
%>