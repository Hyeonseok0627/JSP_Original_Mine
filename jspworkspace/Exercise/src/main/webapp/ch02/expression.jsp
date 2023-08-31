<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting Tag</title>
</head>
<body>
<%--Calendar은 new java.util.Calendar();처럼해서 못 불러오므로 ctrl+shift+'o'를 눌러서 import를 직접해와서 해당 클래스를 사용해야함 --%>
<%--getInstance한 이유는 Calendar 클래스 같은 경우엔 해당 내용을 쓰는 다른 객체들이 동일한 값을 가져야하므로, 싱글톤 패턴을 사용하여
인스턴스를 기존 하나만 가지고있고, 새롭게 인스턴스를 만들지 않고 해당 인스턴스를 그냥 쓰게 하기위해 만든 것, 그래서 new를 하지않고 getInstance() 메서드를 써서 가지고 옴
그래서 Date 클래스와는 다르게 Calendar는 싱글톤 패턴이라 import해주고 getInstance() 메서드를 붙여줘서 해당 인스턴스를 그대로 공유받아서 사용   --%>
<%--getInstance(): 싱글톤패턴으로 기존에 만들어진 인스턴스를 가지고 오는 것, getTime(): 시간을 가지고 오는 것, toString(): 문자열로 변환 --%>
	<%= Calendar.getInstance().getTime().toString() %>
	<%--위에 방식을 쓰면 import해줘야하고, 밑에 방식을 쓰면 import없이 외부 자바 클래스를 가지고 오는 방법 --%>
	<%= java.util.Calendar.getInstance().getTime().toString() %>
</body>
</html>