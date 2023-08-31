<%
	response.sendRedirect("login.jsp?error=1"); //error=1이 주소창에 덧붙여서 나오고 이러면 login.jsp에서 'if (error != null)' 이 부분으로 가서 error 문구가 나오도록 설정
%>