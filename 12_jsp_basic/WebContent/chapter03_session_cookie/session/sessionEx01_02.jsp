<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>

	<% 
	
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
	
		// DB에서 SELECT 쿼리로 인증 작업
		
	%>

	<h4>로그인 되었습니다.</h4>

	<p>아이디 : <%=id %></p>

	<hr>
	<p><a href="sessionEx01_03.jsp">마이페이지</a></p>
	<p><a href="sessionEx01_04.jsp">장바구니</a></p>

</body>
</html>