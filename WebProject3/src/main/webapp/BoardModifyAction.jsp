<%@page import="dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardDao dao = new BoardDao();
	int bno = Integer.parseInt(request.getParameter("bno"));
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	dao.modifyBoard(title, content, bno);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	alert("수정완료");
	location.href="BoardDetail.jsp?bno="+<%=bno%>;
</script>
</head>
<body>

</body>
</html>