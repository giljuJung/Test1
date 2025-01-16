<%@page import="dto.ReplyDto"%>
<%@page import="java.util.ArrayList"%>
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
	ArrayList<ReplyDto> listReply = dao.getReplyList(bno);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.7.1.min.js"></script>
<script>
	$(function() {
		$(".list_btn").click(function() {
			/* location.href="BoardList.jsp"; */
			history.back();
		});
		$(".modify_btn").click(function() {
			location.href="BoardModify.jsp?bno=<%=bno%>";
		})
		$(".delete_btn").click(function() {
			let yn = confirm("삭제하시겠습니까?");
			if(yn) {
				location.href="BoardDelete.jsp?bno=<%=bno%>";
			}
		})
	})
</script>
</head>
<body>
	<p><%=dto.getBno() %></p>
	<p><%=dto.getTitle() %></p>
	<p><%=dto.getContent() %></p>
	<p><%=dto.getWriter() %></p>
	<button class="list_btn">목록보기</button>
	<button class="modify_btn">수정하기</button>
	<button class="delete_btn">삭제하기</button>
	<br/>
	<div>
		<form action="ExBoardReplyWriterAction.jsp" method="post">
		<input type="hidden" name="bno" value="<%=dto.getBno()%>"/>
		댓글작성
		<textarea name="content"></textarea>
		<input type="submit" value="작성완료"/>
		</form>
	</div>
	<%for(ReplyDto rDto : listReply) { %>
	<div>
		<%=rDto.getContent() %> - <%=rDto.getWriter() %> - <%=rDto.getWritedate() %>
	</div>
	<%} %>
</body>
</html>