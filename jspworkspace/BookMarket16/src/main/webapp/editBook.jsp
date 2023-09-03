<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>도서 편집</title>
<script type="text/javascript">
	function deleteConfirm(id) {
		if (confirm("해당 도서를 삭제합니다!!") == true)
			location.href = "./deleteBook.jsp?id=" + id;
		else
			return;
	}
</script>
</head>
<%
	String edit = request.getParameter("edit");
%>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 편집</h1>
		</div>
	</div>

	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp"%>
			
			<%
 				PreparedStatement pst = null;
				ResultSet rt = null; 

				String sql = "select * from book";
				pst = conn.prepareStatement(sql);
				rt = pst.executeQuery();
				while (rt.next()) {
			%>
			<div class="row" align="left">
				<div class="col-md-2">
					<img src ="/upload/<%=rt.getString("b_fileName")%>" style ="width: 100%">
				</div>
				<div class="col-md-8" >
					<h3>[<%=rt.getString("b_category") %>] <%=rt.getString("b_name") %></h3>
					<p><%=rt.getString("b_description") %>
					<p><%=rt.getString("b_author")%> | <%=rt.getString("b_publisher") %> | <%=rt.getString("b_unitPrice") %>원
				</div>
					<%
						if (edit.equals("update")) {
					%>
					<a href="./updateBook.jsp?id=<%=rt.getString("b_id")%>"	class="btn btn-success" role="button"> 수정 &raquo;></a>
					<%
						} else if (edit.equals("delete")) {
					%>
					<a href="#" onclick="deleteConfirm('<%=rt.getString("b_id")%>')" class="btn btn-danger" role="button">삭제 &raquo;></a>
					<%
						}
					%>				
			</div>
			<%
				}
				if (rt != null)
					rt.close();
	 			if (pst != null)
	 				pst.close();
	 			if (conn != null)
					conn.close();
	 		%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>