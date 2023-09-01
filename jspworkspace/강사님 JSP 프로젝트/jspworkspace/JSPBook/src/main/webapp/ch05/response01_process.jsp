<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("id");
		String password = request.getParameter("passwd");
		
		if(userId.equals("관리자") && password.equals("1234")){
			response.sendRedirect("response01_success.jsp");
		}else{
			response.sendRedirect("response01_failed.jsp");
		}
	%>







