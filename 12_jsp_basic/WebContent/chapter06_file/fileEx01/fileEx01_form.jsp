<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<meta charset="UTF-8">
<title>form</title>
</head>
<body>

	<!-- 
	
		# 파일 업 & 다운로드
	
			- input 태그에서 type을 file설정하여 파일을 업로드 할 수 있다.
			
			- form으로 파일을 웹서버로 넘기게 되면 파일은 서버에 지정된 디렉토리에 저장된다.
			
			- 일반적으로 실제 파일은 별도의 파일서버의 디렉터리에 저장하고 
			  데이터베이스에는 실제 파일을 저장하는 것이 아닌 파일이름 및 관련정보들만 저장한다.
			
			- 클라이언트가 업로드한 파일의 이름들이 중복될 수 있어서 Rename 정책을 사용해야한다.
		
			- 파일을 전송은 cos.jar 라이브러리를 이용한다.
			 
			- cos.jar 라이브러리를 WEB-INF/lib위치에 추가해준 후 
			  form태그에 enctype="multipart/form-data"라는 속성을 부여하여 사용한다.
			  
			- enctype은 post방식에서만 존재하기 때문에 GET방식에서는 파일전송이 불가능하다.
	
	 -->
	 
	<form action="fileEx01_upload.jsp" method="post" enctype="multipart/form-data">
		<fieldset>
			<legend>파일 업로드</legend>
		   <p>작성자 : <input type="text" name="writer"></p>
		   <p>파일명 : <input type="file" name="file"></p>
		   <input type="submit" value="upload">
		</fieldset>
	</form>
	
	<br><br>
	<fieldset>
		<legend>파일 다운로드</legend>	
		<table border="1"> 
			<tr>
				<td><img src="../../errorPage/404.PNG" width="70" height="70"></td>
				<td>404에러 이미지</td>
				<td><a href="fileEx01_download.jsp?fileName=404.PNG">다운로드</a></td>
			</tr>
			<tr>
				<td><img src="../../errorPage/500.PNG" width="70" height="70"></td>
				<td>500에러 이미지</td>
				<td><a href="fileEx01_download.jsp?fileName=500.PNG">다운로드</a></td>
			</tr>
		</table>
	</fieldset>

</body>