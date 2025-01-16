<%@page import="dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");
	BoardDao dao = new BoardDao();
	dao.registerBoard(title, content, writer);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	alert("생성완료");
	location.href="BoardList.jsp";
</script>
</head>
<body>

</body>
</html>