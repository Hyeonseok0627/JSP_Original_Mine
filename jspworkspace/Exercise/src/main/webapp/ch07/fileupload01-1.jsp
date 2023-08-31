<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action="fileupload01-1_process.jsp" method="POST" enctype="multipart/form-data">
		<p>이름 : <input type="file" name="filename"></p>
		<input type="submit" value="파일 업로드">
	</form>
</body>
</html>