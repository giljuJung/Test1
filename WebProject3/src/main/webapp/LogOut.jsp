<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate(); // 다 지우기
	// 또는 session.removeAttribute("loginId"); 참고 아이디만 지우기
%>
<script>
	alert("로그아웃 되었습니다.")
	location.href="login.jsp";
</script>