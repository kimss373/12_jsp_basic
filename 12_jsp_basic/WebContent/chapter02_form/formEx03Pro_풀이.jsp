<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>연습문제</title>
</head>
<body>
	<%
	String me = request.getParameter("me");
	
	%>
	<p>나 : <%=me %></p>
	<p>컴퓨터 : 바위</p>
	<hr>
	<hr>
	<h2>
		<%
			if (me.equals("바위")) {
		%>
				비겼다.
		<%		
			}else if (me.equals("가위")){
		%>
				내가 졌다.
		<%	
			} else if (me.equals("보")){
		%>
				내가 이겼다.
		<%	
			}else {
		%>
				잘못된 입력값 입니다. 가위 혹은 바위 혹은 보를 입력해주세요.
		<%
			}
		%>
	</h2>
	

</body>
</html>