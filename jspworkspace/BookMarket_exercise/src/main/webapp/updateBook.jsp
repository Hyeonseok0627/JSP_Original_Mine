<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>도서 수정</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 수정</h1>
		</div>
	</div>
	<%@ include file="dbconn.jsp"%>
	<%
		String bookId = request.getParameter("id");

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "SELECT * FROM book WHERE b_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, bookId);
		rs = pstmt.executeQuery();
		if (rs.next()) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="/upload/<%=rs.getString("b_fileName")%>" alt="image"
					style="width: 100%" />
			</div>
			<div class="col-md-7">
				<form name="newBook" action="./processUpdateBook.jsp"
					class="form-horizontal" method="post" enctype="multipart/form-data">
					<div class="form-group row">
						<label class="col-sm-2">도서코드</label>
						<div class="col-sm-3">
							<input type="text" id="bookId" name="bookId" class="form-control"
								value='<%=rs.getString("b_id")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">도서명</label>
						<div class="col-sm-3">
							<input type="text" id="name" name="name" class="form-control"
								value='<%=rs.getString("b_name")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">가격</label>
						<div class="col-sm-3">
							<input type="text" id="unitPrice" name="unitPrice"
								class="form-control" value='<%=rs.getString("b_unitPrice")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">저자</label>
						<div class="col-sm-3">
							<input type="text" name="author" class="form-control"
								value='<%=rs.getString("b_author")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">출판사</label>
						<div class="col-sm-3">
							<input type="text" name="publisher" class="form-control"
								value='<%=rs.getString("b_publisher")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">출판일</label>
						<div class="col-sm-3">
							<input type="text" name="releaseDate" class="form-control"
								value='<%=rs.getString("b_releaseDate")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">총페이지 수</label>
						<div class="col-sm-3">
							<input type="text" name="totalPages" class="form-control"
								value='<%=rs.getString("b_totalPages")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">상세정보</label>
						<div class="col-sm-5">
							<textarea name="description" cols="50" rows="2"
								class="form-control" placeholder="100자 이상 적어주세요"><%=rs.getString("b_description")%></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">분류</label>
						<div class="col-sm-3">
							<input type="text" name="category" class="form-control"
								value='<%=rs.getString("b_category")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">재고수</label>
						<div class="col-sm-3">
							<input type="text" id="unitsInStock" name="unitsInStock"
								class="form-control" value='<%=rs.getString("b_unitsInStock")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">상태</label>
						<div class="col-sm-5">
							<input type="radio" name="condition" value="New">신규 도서
							<input type="radio" name="condition" value="Old">중고 도서
							<input type="radio" name="condition" value="EBook">E-Book
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">이미지</label>
						<div class="col-sm-5">
							<input type="file" name="bookImage" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10 ">
							<input type="submit" class="btn btn-primary" value="수정">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%
		}
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	%>
</body>
</html>