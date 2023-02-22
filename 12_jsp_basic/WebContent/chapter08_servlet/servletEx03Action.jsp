<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>servletEx03Action</title>
</head>
<body>
	
	<h4>세션 확인 : ${sessionScope.id }</h4>
	<h4>세션 확인 : ${sessionScope.role }</h4>
	<h4>세션 확인 : ${sessionScope.isMobile }</h4>
	
	<hr>
	
	<p><a href="servletEx03MyPage">마이 페이지로 이동하기</a></p>
	<p><a href="servletEx03Cart">카트 리스트로 이동하기</a></p>
	
	
</body>
</html>