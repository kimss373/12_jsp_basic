<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>import</title>
</head>
<body>

	<%
	
		Random ran = new Random();	
		String[] languages = {"JSP", "MySQL", "JS", "CSS", "HTML", "JAVA"};
		int r = ran.nextInt(6);
		
	%>
	<h1><%=languages[r] %> 언어가 재미있다!</h1>
	
	<%
	
		Date date = new Date();	
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
		
		String now = sdf.format(date);
		
	%>
	<h1>현재시간 : <%=now %></h1>

</body>
</html>