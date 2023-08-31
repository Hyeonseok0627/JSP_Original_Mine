<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Welcome</title>
<%--부트스트랩 활용 --%>
<%--구글에서 부트스트랩 검색 -> 사이트 접속 후 해당 버전(4.0)(4.0버전으로 한 이유는 책 내용과 같게 하기위해 한 것이고, 개인적으로 쓸 때는 최신버전인 5.3으로 해도됨) 다운로드
-> 해당 파일 압축 풀면 css, js 폴더가 생성 -> 해당 폴더를 사용할 jsp 파일이 있는 프로젝트 중 webapp 폴더에 넣기
-> 부트스트랩 홈페이지에서 css 부분의 cdm(링크주소)을 복붙해서 아래처럼 <link>에 넣으면 해당 css폴더에서 내용 가지고 오는 것 -> 이후에 밑에처럼 원하는 방식으로 css관련 코드짜면 부트스트랩거로 나옴
, js도 cdm으로 link에 복붙하면 사용가능 / 보통 vscode에서 css 따로 만들어서 링크 따오는 것과 똑같은 개념
이렇게 활용하면 css, js 따로 안만들고 이미 만들어져 있는 것을 활용할 수 있음--%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<nav class = "navbar navbar-expand navbar-dark bg-dark">
		<div class = "container">
			<div class = "navbar-header">
				<a class = "navbar-brand" href="./welcome.jsp">Home</a>
			</div>
		</div>
	</nav>
<%!
	String greeting = "Welcome to Web Shopping Mall";
	String tagline = "Welcome to Web Market!";
%>
<%--"jumbotron 같은 경우엔 4.0버전에는 있지만, 5.3버전에는 없음 / 이것처럼 버전마다 있고없고가 있어서 그것 고려하여 버전활용 --%>
<%--모르는 부분이 있으면 부트스트랩에서 검색해서 그 부분보면서 css,js 다시 공부하기--%>
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">
				<%= greeting %>
			</h1>
		</div>
	</div>
	<div class = "container">
		<div class = "text-center">
			<h3>
				<%= tagline %>
			</h3>
		</div>
		<%--<hr>:선을 나타냄--%>
		<hr>
	</div>
	<footer class = "container">
	<%--&copy: 웹 브라우저에서 c라고 카피라이터 부분처럼 나오는 거 만든 표현 --%>
		<p>&copy; WebMarket</p>
	</footer>
</body>
</html>