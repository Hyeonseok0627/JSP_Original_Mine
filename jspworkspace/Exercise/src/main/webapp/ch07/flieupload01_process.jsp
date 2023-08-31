<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		MultipartRequest multi = new MultipartRequest(request,"c:\\upload"
				,5*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
		
		Enumeration files = multi.getFileNames();
		
		while(files.hasMoreElements()) {
			String filename = (String)files.nextElement();
			File file = multi.getFile(filename);
			out.println("요청 파라미터 이름 : " + filename + "<br>");
			out.println("실제 파라미터 이름 : " + multi.getOriginalFileName(filename) + "<br>");
			out.println("저장 파일 이름 : " + multi.getFilesystemName(filename) + "<br>");
			out.println("파일 콘텐츠 유형 : " + multi.getContentType(filename) + "<br>");
			out.println("파일 크기 : " + file.length());
		}
	%>
</body>
</html>