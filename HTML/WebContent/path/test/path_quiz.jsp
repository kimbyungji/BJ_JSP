<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>path_quiz</title>
</head>
<body>
	<!-- 현재 위치에서 a태그를 이용하여 경로 이동 -->
	<!-- req_video 페이지로 상대 경로로 이동 -->
	<a href ="../../request/req_video.jsp">req_video 페이지로 이동(상대)</a><br>
	
	<!-- req_video 페이지로 절대 경로 이동 -->
	<a href ="/HTML/request/req_video.jsp">req_video 페이지로 이동(절대)</a><br>
	
	<!-- TestServlet로 상대 경로 이동 -->
	<a href ="../../servlet/testServlet.jsp">TestServlet 페이지 이동(상대)</a><br>
	
	<!-- TestServlet로 절대 경로 이동 -->
	<a href ="/HTML/servlet/testServlet.jsp">TestServlet 페이지 이동(상대)</a><br>
	
	<!-- 워킹데드 이미지 경로 참조 -->
	<img alt="워킹데드" src="../../img/워킹데드.jpg"><br>
</body>
</html>