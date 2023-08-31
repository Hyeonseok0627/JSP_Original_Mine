<%-- 해당 만든 파일이 있는 위치 : --%>
<%-- C:\Users\it\Documents\JavaProgramming_git\jspworkspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\HelloJSP3\org\apache\jsp --%>
<%-- jsp로 만든 것을 해당 폴더에서 java 확장자 파일을 열어보면 이렇게 자동적으로 자바파일로 구현되어있음 --%>
<%-- 어떻게 java파일로 표현이 되는지 알고 있어야 jsp 표현문인 <% %> 이것을 사용함 --%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting tag</title>
</head>
<body>

	<h2>Scripting tag</h2>
	
	<%--<%! 선언문 %> --%>
	<%!
		//선언문 : 클래스 선언 바로 아래에 생성, 변수 같은 경우엔 전역변수로, 메서드 생성 가능
		int count = 3;
		String makeItLower(String data) {
			return data.toLowerCase();
		}
	%>
	
	<%--<% 스크립틀릿 : 자바 로직문(메서드 등의 구현부분), 실행문 %> --%>
	<% 
		// 스크립틀릿 : _JSP Service() 매서드 안에서 실행됨
		for (int i=1; i<=count; i++) {
		out.println("Java Server Pages " + i + ".<br>");
		}
	%>
	
	<%--<%=실행결과(스클립틀릿에서 만든 로직문이나 실행문에 파라미터를 넣고 실행하는 결과가 나오는 부분) %> --%>
	<%-- 표현문 : out.println() 괄호 안에서 생성 -> 세미콜론(;) 적지않음  --%>
	<%=makeItLower("Hello World")%><!--makeItLower: 대문자를 소문자로 변경해줌, ;쓸 필요없이 그냥 내용만 넣으면 됨  -->
</body>
</html>