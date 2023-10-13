<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>bean_use_tag.jsp</title>
	</head>
	<body>
		<h2>액션태그로 자바bean 사용</h2>
		
		<jsp:useBean id="user" class="com.bean.User" scope="request"></jsp:useBean>
		<jsp:getProperty property="id" name="user"/><br>
		<jsp:getProperty property="name" name="user"/>
	</body>
</html>