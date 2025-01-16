<%@page import="dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardDao dao = new BoardDao();
	int bno = Integer.parseInt(request.getParameter("bno"));
	dao.deleteBoardByBno(bno);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	alert("삭제완료");
	location.href="BoardList.jsp";
</script>
</head>
<body>

</body>
</html>