<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>include_ex01.jsp</title>
	</head>
	<body>
		<h2>여기는 1번 페이지</h2>
		<%@ include file="include_ex02.jsp" %>
		<jsp:include page="include_ex02.jsp"/>
		
		<!-- 
			디렉티브태크의 include
			-- 페이지 내부에서 사용할 변수를 선언해두고, 디렉티인클루드로 사용할 수 있다.
		 -->
	</body>
</html>