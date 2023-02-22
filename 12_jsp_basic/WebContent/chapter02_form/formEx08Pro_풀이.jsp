<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>연습문제</title>
</head>
<body>
	<h2>
	<%
		String myAccount = request.getParameter("myAccount");
		String yourAccount = request.getParameter("yourAccount");
		int myMoney = Integer.parseInt(request.getParameter("myMoney"));
		String sendAccount = request.getParameter("sendAccount");
		int sendMoney = Integer.parseInt(request.getParameter("sendMoney"));
		
		if (!yourAccount.equals(sendAccount)) {
	%>
		없는 계좌번호 입니다.
	<%
		} else {
			
			if (sendMoney <= myMoney) {
				myMoney -= sendMoney;
	%>
				<%=yourAccount %>계좌에 <%=sendMoney %>원을 이체를 완료하였습니다. 남아있는 금액은 <%=myMoney %>원 입니다.
	<%				
			} else {
	%>
				<%=myAccount %>계좌에 잔액이 <%=sendMoney-myMoney %>만큼 부족합니다.
	<%
			}
			
		}
	%>
	</h2>
</body>
</html>