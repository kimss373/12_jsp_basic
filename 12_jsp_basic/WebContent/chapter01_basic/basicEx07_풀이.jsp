<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제</title>
</head>
<body>

	<p>
		[ 문제설명 ]<br><br>
		
		1. 랜덤객체를 생성 <br>
		2. 랜덤에서 0이 나올 경우 셀렉트태그 생성<br>
		3. 랜덤에서 1이 나올 경우 체크박스 생성<br>
		4. 랜덤에서 2가 나올 경우 라디오 생성<br>
	</p>
	 
	<%
		Random ran = new Random();
	
		int r = ran.nextInt(3);
		
		if (r == 0) {
	%>
			
			<p>
				<select>
					<option>HTML5</option>
					<option>CSS3</option>
					<option>JAVASCRIPT</option>
				</select>
			</p>
			
	<%
		} else if (r == 1) {
	%>
			<p>
				<input type="checkbox"> HTML5
				<input type="checkbox"> CSS3
				<input type="checkbox"> JAVASCRIPT
			</p>
	<%	
		} else{
	%>
			<p>
				<input type="radio" name="1"> HTML5
				<input type="radio" name="1"> CSS3
				<input type="radio" name="1"> JAVASCRIPT
			</p>
	<%	
		}
	%>
	
	
</body>
</html>