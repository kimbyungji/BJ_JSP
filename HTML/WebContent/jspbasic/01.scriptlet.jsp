<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>스크립틀릿01</title>
	</head>
	<body>
		<%-- 주석
			 스크립틀릿은 <% %> 사이에 자바 코드를 넣어서 사용  
		--%>
		<%
			int num=0;
			if(num>0){		// 자바 코드
		%>
			<p>참이면 출력</p>			<!-- html 코드 -->
		<%
			}else{			// 자바 코드
		%>
			<p>거짓이면 출력</p>		<!-- html 코드 -->
		<%					
			}				// 자바 코드
		%>
	</body>
</html>