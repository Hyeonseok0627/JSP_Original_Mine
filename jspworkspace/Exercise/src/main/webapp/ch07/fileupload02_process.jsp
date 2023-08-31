<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String path = "C:\\upload";
	
		DiskFileUpload upload = new DiskFileUpload();
		
		List items = upload.parseRequest(request);
		
		Iterator params = items.iterator();

		while(params.hasNext()) {
			FileItem item = (FileItem)params.next();
			
			File file = new File(path + "/" + item.getName());
			item.write(file);
			
			out.println("요청 파라미터 이름 : " + item.getFieldName() + "<br>");
			out.println("저장 파일 이름 : " + item.getName() + "<br>");
			out.println("파일 콘텐츠 유형 : " + item.getContentType() + "<br>");
			out.println("파일 크기 : " + item.getSize());
		}
	%>
</body>
</html>