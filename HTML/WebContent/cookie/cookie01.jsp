<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
		Date클래스를 사용하여 웹페이지 접근 시간을 xxx년 xx월 xx일 형태로 생성
		날짜 형식을 문자열 형태로 show라는 이름의 쿠키로 생성
		show쿠키를 cookie02.jsp에서 확인할 수 있게 만들어주세요
	*/
	SimpleDateFormat date = new SimpleDateFormat("yyyy년MM월dd일");	
	Date now = new Date();
	String nowTime = date.format(now);
	
	
	
	Cookie dateCoo = new Cookie("show",nowTime);
	
	dateCoo.setMaxAge(30);
	
	response.addCookie(dateCoo);
	
	
%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>cookie01.jsp</title>
	</head>
	<body>
		<a href="cookie02.jsp">쿠키에 저장된 값 확인해보기</a>
	</body>
</html>