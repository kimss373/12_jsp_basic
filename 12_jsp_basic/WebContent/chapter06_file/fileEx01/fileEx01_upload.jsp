<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>upload</title>
</head>
<body>

	<% 
	
		request.setCharacterEncoding("utf-8");
	
		/*
	    
			# 파일 업로드를 수행하는 MultipartRequest 객체 생성 ( 핵심 역할 )
			
			[ 생성자의 인수 설명 ]
					
		    - 첫번째 인자는 폼에서 가져온 인자 값을 얻기 위해 request객체를 전달한다. 
			- 두번째 인자는 업로드 될 파일의 위치를 입력한다.
		    - 세번째 인자는 업로드한 모든 파일의 용량의 합의 최대치를 의미하며 최대 크기를 넘는경우 Exception이 발생한다.
		    - 네번째 인자는 한글 이름이 넘어올 경우 한글에 문제되지 않도록 인코딩을 지정한다.
			- 다섯번째 인자는 똑같은 파일을 업로드 할 경우 중복되지 않도록 파일이름을 변환해 주는 기능을 갖는다.
		
		 */
		
		 
		// 파일의 저장 경로는 웹서비스의 접근 경로가 아닌 물리적인 실제 경로를 적어주어야 한다.
		String location = "C:\\Users\\15_web_kss\\eclipse-workspace\\12_jsp_basic\\WebContent\\chapter06_file\\file_repo";
		
		/*
		8bit     > 1Byte
		1024Byte > 1KB
		1024KB   > 1MB
		1024MB   > 1GB
		1024GB   > 1TB
		*/
		
		try{
			
			// MultipartRequest 이 코드가 실제로 파일 업로드를 담당하는 부분이다.
			MultipartRequest multi =  new MultipartRequest(request, 
														   location, 
													       1024*1024*10, // 10MB 
														   "utf-8", 
														   new DefaultFileRenamePolicy());
		 	
			/*
			multipart/form-data형식으로 전송 되었기 때문에 request.getParameter가 불가능하고
			MultipartRequest 객체의 getParamter메서드를 사용해야 한다.
			request.getParameter("userName"); 불가능
			*/
			
			String writer = multi.getParameter("writer");
			
			Enumeration files = multi.getFileNames(); // <input type="file">인 모든 파라메타를 반환
			
			if (files.hasMoreElements()) { // 다음 에릴먼트가 있으면 
				
				String element = (String) files.nextElement();  // <input type="file"> 1개를 반환 
				
				String filesystemName 	= multi.getFilesystemName(element);		// 서버에 업로드 된 파일명 반환(리네임 적용o)
				String originalFileName = multi.getOriginalFileName(element);	// 서버에 업로드 한 파일명 반환(리네임 적용x)
				String content 			= multi.getContentType(element);		// 파일의 타입을 반환
				long length 			= multi.getFile(element).length();		// 파일의 크기를 반환 (long 타입)
				
				System.out.println("writer : " + writer);
				System.out.println("element : " + element);
				System.out.println("filesystemName : " + filesystemName);
				System.out.println("originalFileName : " + originalFileName);
				System.out.println("content : " + content);
				System.out.println("length : " + length);
				System.out.println();
				
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();			
		} 
		
	
	%>
	

</body>
</html>