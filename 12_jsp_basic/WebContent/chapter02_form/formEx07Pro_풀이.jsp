<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>연습문제</title>
</head>
<body>

	<%
		int num1 = Integer.parseInt("num1");
		int num2 = Integer.parseInt("num2");
		int num3 = Integer.parseInt("num3");
		
		int max = num1;
		
		if (num2 > max) {
			max = num2;
		}
		if (num3 > max) {
			max = num3;
		}
	%>
	
	<h2>
		가장 큰 숫자는 <%=max %> 입니다.
	</h2>
	
</body>
</html>