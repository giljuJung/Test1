<%@page import="dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardDao dao = new BoardDao();
	request.setCharacterEncoding("utf-8");
	int bno = Integer.parseInt(request.getParameter("bno"));
	String writer = (String) session.getAttribute("loginId");
	String content = request.getParameter("content");
	dao.registerReply(bno, writer, content);
%>
<script>
	alert("댓글이 등록되었습니다.");
	location.href="BoardDetail.jsp?bno=<%=bno%>";
</script>
