<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>-------- 세션을 삭제하기 전 -----------</h4>

	<%
		String name;
		String value;
		
		Enumeration en = session.getAttributeNames();
		int i = 0;
		
		while (en.hasMoreElements()) {
			i++;
			name = en.nextElement().toString(); //name이 String형이므로 toString() 메서드로 형변환
			value = session.getAttribute(name).toString(); //value가 String형이므로 toString() 메서드로 형변환
			
			out.println("설정된 세션의 속성 이름 [ " + i + " ] : " + name + "<br>");
			out.println("설정된 세션의 속성 값 [ " + i + " ] : " + value + "<br>");
		}
		
		session.removeAttribute("userID"); //속성값을 다 삭제함(전체값이 while로 반복이며, 해당 속성값이 삭제되니 한번 유효한 값이 나오고 새로고침하면 데이터가 아예없음)
	%>
	
	<h4>--------- 세션을 삭제한 후 ------------</h4>
	
	<%
		 en = session.getAttributeNames();
		 i = 0;
		
		while (en.hasMoreElements()) {
			i++;
			name = en.nextElement().toString(); //name이 String형이므로 toString() 메서드로 형변환
			value = session.getAttribute(name).toString(); //value가 String형이므로 toString() 메서드로 형변환
			
			out.println("설정된 세션의 속성 이름 [ " + i + " ] : " + name + "<br>");
			out.println("설정된 세션의 속성 값 [ " + i + " ] : " + value + "<br>");
		}
	%>
</body>
</html>