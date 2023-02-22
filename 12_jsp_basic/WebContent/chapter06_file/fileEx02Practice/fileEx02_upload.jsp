<%@page import="_06_file.FileDAO2"%>
<%@page import="_06_file.FileDTO"%>
<%@page import="java.util.ArrayList"%>
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
		
		try{
			
			String location = "C:\\Users\\15_web_kss\\eclipse-workspace\\12_jsp_basic\\WebContent\\chapter06_file\\file_repo_practice";
			
			MultipartRequest multi = new MultipartRequest(request, location, 1024*1024*30, "utf-8", new DefaultFileRenamePolicy());
			
			String userName = multi.getParameter("userName");
			String title = multi.getParameter("title");
			
			Enumeration files = multi.getFileNames();
			
			ArrayList<FileDTO> fileList = new ArrayList<FileDTO>();
			
			while(files.hasMoreElements()) {
				
				String element = (String) files.nextElement();
				
				if (multi.getOriginalFileName(element) != null) {
					
					FileDTO fileDTO = new FileDTO();
					
					fileDTO.setUserName(userName);
					fileDTO.setTitle(title);
					fileDTO.setFilesystemName(multi.getFilesystemName(element));
					fileDTO.setOriginalFileName(multi.getOriginalFileName(element));
					fileDTO.setContentType(multi.getContentType(element));
					fileDTO.setLength(multi.getFile(element).length());
					
					fileList.add(fileDTO);
					
				}
				
			}
			
			FileDAO2.getInstance().insertFiles(fileList);
	
	%>
		<script>
			alert("파일 업로드 완료");
			location.href="fileEx02_list.jsp";
		</script>
	<%
					
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	%>
	
</body>
</html>