<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>연습문제</title>
</head>
<body>

	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		int answer = Integer.parseInt(request.getParameter("answer"));
	%>
	
	<h2>
		<%=num1 %> X <%=num2 %> = <%=answer %>
	</h2>
	<h2>
		<%
			if (answer == num1*num2){
		%>
				결과 : 정답!
		<%
			} else {
		%>
				결과 : 땡!
		<%
			}
		%>
	</h2>
	
</body>
</html>