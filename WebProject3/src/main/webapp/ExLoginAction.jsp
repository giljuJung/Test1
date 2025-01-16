<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDao dao = new MemberDao();
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	boolean result = dao.loginCheck(id, pw);
	
	if(result) {
	session.setAttribute("loginId", id); // 키, 값 session -> 서버의 저장통 
%>
	<script>alert("로그인성공");location.href="BoardList.jsp";</script>

<% } else {%>
	<script>alert("로그인 실패 "); location.href="login.jsp"; /* history.back() */</script>
	
<%}%>