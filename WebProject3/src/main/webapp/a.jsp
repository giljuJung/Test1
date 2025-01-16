<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	RequestDispatcher rd = request.getRequestDispatcher("b.jsp"); //a.jsp, java, class -> b.jsp, java, class -> html문서 화면단으로 이동
	request.setAttribute("result", "true");
	rd.forward(request, response); //-> 너가 처리해라 화면주소에선 a.sjp로 보임   서버 안에서 이동
//	response.sendRedirect("b.jsp"); // 2번이 돌고 b.jsp로 재요청을 날림
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <script>location.href = "b.jsp";</script> --%>
	<%-- <a href="b.jsp">클릭하면?</a> --%>
</body>
</html>