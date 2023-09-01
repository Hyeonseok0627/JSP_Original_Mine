<%--554 페이지 내용 추가 --%>
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--현재 jsp 페이지에서 사용할 클래스를 설정하는 page 디렉티브 태그 --%>
<%--<%@ page import="java.util.ArrayList" %> : 554 페이지로 내용 삭제--%>
<%-- <%@ page import="dto.Product" %> : 554 페이지로 내용 삭제--%>

<%--208 페이지 내용 추가 --%>
<%-- <%@ page import="dao.ProductRepository" %> : 554 페이지로 내용 삭제--%>

	<%--해당 자바빈즈를 가지고와서 사용하는 useBean 액션 태그 --%>
<%-- <jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" /> : 554 페이지로 내용 삭제--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<%--css를 부트스트랩 활용(부트스트랩 4.0.0버전으로 다운로드 받은 css폴더가 webapp에 있고, 해당 링크를 삽입 --%>
	<%--241 페이지 내용으로 변경--%>
<link rel="stylesheet" href="./resources/CSS/bootstrap.min.css" />

<title>상품 목록</title>
</head>
<body>
	<%--"menu.jsp" 내용을 포함시키는 include 액션 태그 --%>
	<jsp:include page="menu.jsp" />
	<%--상품 목록 부분 영역 생성 --%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	
	<%-- 202 ~9 페이지 내용하면서 해당 usebean 내용은 삭제 
	<%
	 	ArrayList<Product>listOfProducts = productDAO.getAllProducts(); //productDAO.getAllProducts() 메서드 구현
	 %>
	 --%>
	 
	 <%--<%
	 	ProductRepository dao = ProductRepository.getInstance();
	 
	 	ArrayList<Product> listOfProducts = dao.getAllProducts(); //208 페이지 내용 추가
	 	
	 %> : 554 페이지로 내용 삭제--%>
	 
	 <div class="container">
	 	<div class="row" align="center">
	 		
	 		<%--554 페이지 내용 추가 --%>
	 		<%@ include file = "dbconn.jsp" %>
	 		<%
	 			PreparedStatement pstmt = null;
	 			ResultSet rs = null;
	 			String sql = "select * from product";
	 			pstmt = conn.prepareStatement(sql);
	 			rs = pstmt.executeQuery();
	 			while (rs.next()) {
	 		%>
	 		
	 		<%--for문을 써서, 아이템 3개 각각 정보 나오는 것을 반복 구현 --%>
	 		<%--<%
	 			for(int i=0; i<listOfProducts.size(); i++) {
	 				Product product = listOfProducts.get(i);
	 		%> : 554 페이지로 내용 삭제--%>
	 		
	 		<div class="col-md-4">
	 		
	 			<%--241 페이지 내용 추가 -> 243 페이지 내용으로 변경 -> 554 페이지 내용으로 변경--%>
	 			<img src="/upload/<%=rs.getString("p_fileName")%>" style="width: 100%">
	 			<h3><%=rs.getString("p_name") %></h3>
	 			<p><%=rs.getString("p_description") %>
	 			<p><%=rs.getString("p_UnitPrice") %>원
	 			
	 			<%--해당 부분은 243 페이지 내용으로 변경한 내용 --%>
	 			<%--<img src="/upload/<%=product.getFilename()%>" style="width: 100%">
	 			<h3><%=product.getPname() %></h3>
	 			<p><%=product.getDescription() %>
	 			<p><%=product.getUnitPrice() %>원--%>
	 			<%--해당 부분은 174페이지 내용 --%>
	 			<%--./product.jsp?id=<%=product.getProductId()%>:임의로 버튼 클릭 시
	 			들어가는 페이지 링크 주소 생성
	 			btn btn-secondary: 부트스트랩에 있는 버튼 코드값 --%>
	 			
	 			<%--554 페이지 내용으로 변경 --%>
	 			<p> <a href= " ./product.jsp?id=<%=rs.getString("p_id")%>"
	 			class= "btn btn-secondary" role="button"> 상세 정보 &raquo;</a>
	 			
	 			<%-- <p> <a href= " ./product.jsp?id=<%=product.getProductId()%>"
	 			class= "btn btn-secondary" role="button"> 상세 정보 &raquo;</a> : 변경하기 이전 내용--%>
	 		</div>
	 		
	 		<%-- <%
	 			} 		
	 		%> : 554 페이지로 내용 삭제--%>

		<%--555 페이지 내용 추가 --%>
		<% 
			} 
	 		if (rs != null)
	 			rs.close();
	 		if (pstmt != null)
	 			pstmt.close();
	 		if (conn != null)
	 			conn.close();
		%>
	 	</div>
	 	<hr>
	</div>
	<jsp:include page="footer.jsp"	/> 		
</body>
</html>