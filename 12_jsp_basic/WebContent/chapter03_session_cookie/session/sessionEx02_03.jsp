<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>

	<h3>마이 페이지</h3>
	<%
	
		//session.getAttribute(); 메서드의 반환값은 Object이므로
		//형변환 작업을 해주어야 한다.	
		String id = (String) session.getAttribute("id");
		String role = (String) session.getAttribute("role");
		
		
	%>
	
	<%=id %>(<%=role %>)님 로그인중	
	
	
	
</body>
</html>