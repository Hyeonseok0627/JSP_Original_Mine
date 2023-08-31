<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--MultipartRequest 클래스 사용하기 위해 import--%>
<%@ page import="com.oreilly.servlet.*" %>
    <%--DefaultFileRenamePolicy 클래스 사용하기 위해 import--%>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<p> 파일 올리기 = 제출 </p>
<%--여기에선 multi 객체를 만들어서 해당 객체에서 값을 불러오고 저장하는 개념 (앞서서 request.getParameter(); 한 것과 같은 개념이지만 불러오는 대상이 다른 것 --%>
<%
	MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 
	5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy()); //DefaultFileRenamePolicy() : 똑같은 이름의 파일인 경우 뒤에 숫자붙여줘서 다운로드 받도록 해줌
	
	Enumeration params = multi.getParameterNames();
	
	while (params.hasMoreElements()) {
		String name = (String) params.nextElement();
		String value = multi.getParameter(name);
		out.println(name + " = " + value + "<br>");
	}
	out.println("-------------------------<br>");
	
	Enumeration files = multi.getFileNames();
	
	while (files.hasMoreElements()) {
		String name = (String) files.nextElement();
		String filename = multi.getFilesystemName(name);
		String original = multi.getOriginalFileName(name);
		String type = multi.getContentType(name);
		File file = multi.getFile(name);
		
		out.println("요청 파라미터 이름 : " + name + "<br>");
		out.println("실제 파일 이름 : " + original + "<br>");
		out.println("저장 파일 이름 : " + filename + "<br>");
		out.println("파일 콘텐츠 유형 : " + type + "<br>");
		
		if (file != null) {
			out.println(" 파일 크기 :" + file.length());
			out.println("<br>");
		}
	}
%>