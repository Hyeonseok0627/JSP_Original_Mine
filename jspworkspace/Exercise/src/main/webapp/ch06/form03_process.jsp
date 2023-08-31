<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String[] Fruit = request.getParameterValues("Fruit");
	%>
		
	<p> 선택한 과일 </p>
	<p> <%
			if(Fruit != null) {
				for (int i = 0; i < Fruit.length; i++) {
					out.println(Fruit[i]);
				}
			}
		%>			
		
</body>
</html>