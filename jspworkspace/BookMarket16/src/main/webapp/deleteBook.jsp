<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<%
	String bookId = request.getParameter("id");	

	String sql = "select * from book";
 	PreparedStatement pst = conn.prepareStatement(sql);
	ResultSet rt = pst.executeQuery();

	if (rt.next()) {
		sql = "delete from book where b_id = ?";
		pst = conn.prepareStatement(sql);
		pst.setString(1, bookId);
		pst.executeUpdate();
	} else
		out.println("일치하는 도서가 없습니다");
	
	if (rt != null)
		rt.close();
 	if (pst != null)
 		pst.close();
 	if (conn != null)
		conn.close();
	
 	response.sendRedirect("editBook.jsp?edit=delete");
%>
