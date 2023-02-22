<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>연습문제</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
	
		int height = Integer.parseInt(request.getParameter("height"));
		String withParents = request.getParameter("withParents");
	%>
	
	<h2>
		<%
			if (withParents.equals("yes")) {
		%>
				놀이기구를 이용할 수 있습니다.
		<%
			} else {
				if (height>=120){
		%>
					놀이기구를 이용할 수 있습니다.
		<%
				} else {
		%>
					놀이기구를 이용할 수 없습니다.
		<%
				}
			}
		%>
	</h2>

</body>
</html>