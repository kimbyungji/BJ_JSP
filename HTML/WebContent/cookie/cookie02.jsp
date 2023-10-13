<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
		show 쿠키가 있다면 쿠키가 가지고 있는 값을 화면에 출력
		없으면 쿠키 없습니다. 출력
	*/
	Cookie[] arr =  request.getCookies();
	String date = null;

	if(arr!=null){	// 쿠키 존재 여부 확인
		for(int i=0;i<arr.length;i++){
			if(arr[i].getName().equals("show")){
				date = arr[i].getValue();
			}	
		}
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>cookie02.jsp</title>
	</head>
	<body>
		<!-- 
			쿠키 값이 없으면, "쿠키값이 없습니다.
			show 쿠키가 있는 경우에는 "마지막 접속 날짜 : ~~~"가 출력되게 해주세요
		 -->
		 <% if(date==null){ %>
		 	쿠키가 없습니다.
		 <%}else{ %>
		 	마지막 접속 날짜 : <%=date %>
		 <%} %>
	</body>
</html>