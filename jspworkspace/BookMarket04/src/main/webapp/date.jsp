<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
java.util.Date day =new java.util.Date();
String am_pm;
int hour = day.getHours();
int minute = day.getMinutes();
int second = day.getSeconds();

if(hour/12 == 0)
	am_pm = "AM";
else
	am_pm = "PM";

String CT = hour +":"+ minute +":"+second+" "+am_pm;
out.println("현재  접속 시간 "+CT+"\n");

%>