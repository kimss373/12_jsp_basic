<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>

	<h2>장바구니</h2>
	<% 
		String id = request.getParameter("id");
	%>
	<p><%=id %>님 로그인 중</p>

</body>
</html>