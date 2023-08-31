<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
<title>File Upload</title>
</head>
<body>
<p> 파일 올리기 = 제출 </p>
	<%
		MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 
		5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy()); //파일 업로드가 안 되는 경우엔 해당 파일크기가 5*1024*1024를 초과하여 나타난 에러(5*1024*1024 부분을 더 늘리면 가능함)
	
		String name1 = multi.getParameter("name1");
		String subject1 = multi.getParameter("subject1");
	
		String name2 = multi.getParameter("name2");
		String subject2 = multi.getParameter("subject2");
	
		String name3 = multi.getParameter("name3");
		String subject3 = multi.getParameter("subject3");
		
		Enumeration files = multi.getFileNames(); //제일 마지막에 넣은 것이 제일 먼저 나온다는 개념
	
		String file3 = (String) files.nextElement();
		String filename3 = multi.getFilesystemName(file3);
	
		String file2 = (String) files.nextElement();
		String filename2 = multi.getFilesystemName(file2);
	
		String file1 = (String) files.nextElement();
		String filename1 = multi.getFilesystemName(file1);
	%>
	<table border = "1">

		<tr>
			<th width="100">이름</th>
			<th width="100">제목</th>
			<th width="100">파일</th>
		</tr>
		<%
			out.print("<tr><td>" + name1 + "</td>");
			out.print("<td>" + subject1 + "</td>");
			out.print("<td>" + filename1 + "</td></tr>\n");
		
			out.print("<tr><td>" + name2 + "</td>");
			out.print("<td>" + subject2 + "</td>");
			out.print("<td>" + filename2 + "</td></tr>\n");
		
			out.print("<tr><td>" + name3 + "</td>");
			out.print("<td>" + subject3 + "</td>");
			out.print("<td>" + filename3 + "</td></tr>\n");
		%>
	</table>
</body>
</html>