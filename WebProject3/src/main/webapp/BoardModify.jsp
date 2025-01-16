<%@page import="dto.BoardDto"%>
<%@page import="dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%if(session.getAttribute("loginId") == null) {%>
	<script>alert("로그인하세요."); location.href="login.jsp";</script>
	<%}%>
<%
	int bno = Integer.parseInt(request.getParameter("bno"));
	BoardDao dao = new BoardDao();
	BoardDto dto = dao.getBoardDtoByBno(bno);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="BoardModifyAction.jsp">
		<input type="hidden" name="bno" value="<%=dto.getBno() %>"/><br/>
		<input type="text" name="title" value="<%=dto.getTitle() %>"/><br/>
		<textarea name="content"><%=dto.getContent() %></textarea>
		<input type="submit" value="수정"/>
	</form>
</body>
</html>