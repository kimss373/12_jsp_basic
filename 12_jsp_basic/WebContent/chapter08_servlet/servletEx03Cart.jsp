<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${pageTitle }</title>
</head>
<body>

	<h4>session 확인 : ${sessionScope.id }</h4>
	<h4>session 확인 : ${sessionScope.role }</h4>
	<h4>session 확인 : ${sessionScope.isMobile }</h4>
	
	<hr>
	
	<h4>request 확인 : ${name }</h4>
	<h4>request 확인 : ${contact }</h4>
	
</body>
</html>