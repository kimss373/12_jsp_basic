<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>연습문제</title>
</head>
<body>
	<%
		String loginId = request.getParameter("id");
		String loginPw = request.getParameter("pw");
		String dbId = request.getParameter("dbId");
		String dbPw = request.getParameter("dbPw");
	%>
	<h2>
		<%
			if (dbId.equals(loginId) && dbPw.equals(loginPw)) {
		%>
				결과 : 로그인 성공
		<%	
			} else {
		%>
				결과 : 로그인 실패
		<%	
			}
		%>
	</h2>
	
</body>
</html>