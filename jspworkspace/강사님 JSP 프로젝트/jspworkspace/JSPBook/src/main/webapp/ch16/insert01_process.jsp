<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		
		Statement stmt = null;
		
		try{
			String sql = "INSERT INTO member(id,passwd,name) VALUES('"
					+id+"','"+passwd+"','"+name+"')";
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			out.println("member 테이블에 삽입이 성공했습니다.");
		}catch(SQLException ex){
			out.println("member 테이블에 삽입이 실패했습니다. <br>");
			out.println("SQLException : "+ex.getMessage());
		}finally{
			if(stmt!=null){
				stmt.close();
			}
			if(conn!=null){
				conn.close();
			}
		}
	%>
</body>
</html>









