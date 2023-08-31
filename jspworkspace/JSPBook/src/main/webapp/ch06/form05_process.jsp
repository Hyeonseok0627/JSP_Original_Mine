<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id"); //form05에 input name 설정한 값을 넣어줌
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String sex = request.getParameter("sex");
		String[] hobby = request.getParameterValues("hobby"); //String[]: 배열
		String comment = request.getParameter("comment");
	%>
	<p> 아이디 : <%=id%>
	<p> 비밀번호 : <%=passwd%>
	<p> 이름 : <%=name%>
	<p> 연락처 : <%=phone1%>-<%=phone2%>-<%=phone3%>
	<p> 성별 : <%=sex%>
	
	<p> 취미 : <%
				if (hobby != null) {
					for (int i=0; i<hobby.length; i++) {
						out.println(" " + hobby[i]);
					}
				}
			%>
	<p> 가입 인사 : <%=comment%>
</body>
</html>

				<%--향상된 for문(for each) 
				위에 그냥 for문과 같음--%>
				<%-- <<if (hobby != null) {
					for(String str : hobby) {
						out.println(" "+str);
					}--%>