<%--MySQL에 저장한 SELECT 쿼리문 실행 결과값을 웹브라우저에 가져오기 --%>

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
	<%@ include file = "dbconn.jsp" %>
	<table width="300" border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
		</tr>
		<%
			ResultSet rs = null;
			PreparedStatement pstmt = null;
			
			try {
				String sql = "select * from member"; //where 값이 있으면 이것도 써줌
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery(); //executeQuery()는 ResultSet만 사용가능해서 이걸 써서 while문으로 반복하여 데이터를 표에 저장시켜줌(list 개념이긴함)
				
				while (rs.next()) {
					String id = rs.getString("id");
					String pw = rs.getString("passwd");
					String name = rs.getString("name");
		%>
		<tr>
			<td><%=id %></td>
			<td><%=pw %></td>
			<td><%=name %></td>
		</tr>
		<%
				}
			} catch (SQLException ex) {
				out.println("Member 테이블 호출이 실패했습니다.<br>");
				out.println("SQLException: " + ex.getMessage());
			} finally {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			}
		%>
	</table>
</body>
</html>