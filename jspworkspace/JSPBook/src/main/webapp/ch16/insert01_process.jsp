<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database SQL</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		
		Statement stmt = null;
		
		try {
			String sql = "INSERT INTO Member(id, passwd, name) VALUES('" +
			id +"','" + passwd + "','" + name + "')"; //이렇게 완벽한 sql문을 작성해주면 Statement임(Statement 객체 사용 시, 데이터가 많아지면 코드가 길어지니 preparedStatement 객체 사용함)
			stmt = conn.createStatement();
			stmt.executeUpdate(sql); //stmt가 실행이 되도록 하는 코드
			out.println("Member 테이블 삽입이 성공했습니다.");
		} catch (SQLException ex) {
			out.println("Member 테이블 삽입이 실패했습니다.<br>");
			out.println("SQLException: " + ex.getMessage());
		} finally {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				stmt.close();
		}
	%>
</body>
</html>