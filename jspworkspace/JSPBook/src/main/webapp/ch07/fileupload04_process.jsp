<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
<title>File Upload</title>
</head>
<body>
<%--여기에서 사용된 주된 클래스들은 자바 jdk것이 아닌 jar로 mvn에서 다운로드 받은 것
그래서 자세히 알려면 인터넷 검색으로 확인 --%>
	<%
		String path = "C:\\upload";
	
		DiskFileUpload upload = new DiskFileUpload();
		
		upload.setSizeMax(1000000);
		upload.setSizeThreshold(4096);
		upload.setRepositoryPath(path);
		
		List items = upload.parseRequest(request); //list로 변환해서 가지고 오는 것(parse : 변환의 의미)
		
		Iterator params = items.iterator();
	
		while (params.hasNext()) {
			FileItem item = (FileItem) params.next();
			if (item.isFormField()) {
				String name = item.getFieldName();
				String value = item.getString("utf-8");
				out.println(name + "=" + value + "<br>");
			} else {
				String fileFieldName = item.getFieldName();
				String fileName = item.getName();
				String contentType = item.getContentType();
				
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				long fileSize = item.getSize(); //filesize가 용량이 커서 long으로 설정
				
				File file = new File(path + "/" + fileName);
				item.write(file);
				
				out.println("------------------------------<br>");
				out.println("요청 파라미터 이름 : " + fileFieldName + "<br>");
				out.println("저장 파일 이름 : " + fileName + "<br>");
				out.println("파일 콘텐츠 유형 : " + contentType + "<br>");
				out.println("파일 크기 : " + fileSize);
			}
		}
	%>
</body>
</html>