<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%if(session.getAttribute("loginId") == null) {%>
	<script>alert("로그인하세요."); location.href="login.jsp";</script>
	<%}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="BoardCreateAction.jsp"> 
		<input type="text" name="title" placeholder="제목"/></br/>
		<textarea name="content" placeholder="내용"></textarea><br/>
		<input type="text" name="writer" placeholder="작성자"/>
		<input type="submit" value="생성"/>
	</form>
</body>
</html>