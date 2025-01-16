<%@page import="dto.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%if(session.getAttribute("loginId") == null) {%>
	<script>alert("로그인하세요."); location.href="login.jsp";</script>
	<%}%>
<%
	int pageNum = 1;
	try {
		pageNum = Integer.parseInt(request.getParameter("page"));
	} catch(NumberFormatException e) {
		
	}
	BoardDao dao = new BoardDao();
	ArrayList<BoardDto> list = dao.getBoardListByPageNumber(pageNum);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.7.1.min.js"></script>
<script>
	$(function() {
		$(".write_btn").click(function() {
			location.href = "BoardCreate.jsp";
		});
		$("td").click(function() {
			let bno = $(this).parent().find(".bno").text();
			location.href="BoardDetail.jsp?bno="+bno;
		});
		$("#btn_logout").click(function() {
			location.href="LogOut.jsp";
		})
	})
</script>
<style>
	.reply_cnt{color: red;}
</style>
</head>
<body>
	<button id="btn_logout">로그아웃</button>
	<h1>게시판<%=pageNum %></h1>
	<button class="write_btn">글쓰기</button>
	<table>
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
		</tr>
<%for(BoardDto dto : list) { %>
		<tr>
			<td class="bno"><%=dto.getBno() %></td> 
			<td><%=dto.getTitle() %>
				<%if(dao.getReplyCountByBno(dto.getBno())>0) { %>
				<span class="reply_cnt">[<%=dao.getReplyCountByBno(dto.getBno()) %>]</span>
				<%} %>
			</td> 
			<td><%=dto.getWriter() %></td>
		</tr>
<%} %>
	</table>
	<div id="div_pagenation">
	<%
		int cntBoard = dao.getCountBoard();
		int startPageNum = ((pageNum-1)/5)*5+ 1;
		int endPageNum = startPageNum + 4;
		int lastPageNum = cntBoard / 15 + (cntBoard%15!=0 ? 1 : 0);
		if(endPageNum > lastPageNum) {
			endPageNum = lastPageNum;
		}
	%>
	<%
	for(int i=startPageNum; i<=endPageNum; i++) {%>
		<% if(pageNum != i) {%>
		<a href="BoardList.jsp?page=<%=i %>"><%=i %></a>
		<%} else {%>
		<span><%=i %></span>
		<%} %>
<% 	}%>
	</div>
</body>
</html>