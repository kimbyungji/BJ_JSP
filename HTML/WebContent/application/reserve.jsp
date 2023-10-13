<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	
	// 인정 처리 여부 확인
	if(session.getAttribute("auth_ok")==null){
		response.sendRedirect("auth.jsp");
	}
	
	// 예약 현황이 있다면 예약 좌석을 꺼낸다
	List<String> list = (List<String>)application.getAttribute("seats");
	if(application.getAttribute("seats")!=null){
		list = (List<String>)application.getAttribute("seats");
	}
	
%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1 align="center">콘서트 예약</h1>
		<h3 align="center">예약할 좌석을 선택하세요</h3>
		<hr>
		<h3 align="center">좌석 배치도</h3>
		<form action="seat.jsp" align="center">
		<%
			for(int i='A';i<='Z';i++){
		%>
				&nbsp;&nbsp;<small><%=(char)i%></small>
		<%
			}
		%>
			<br>
		<%
		
			for(int j=1;j<=6;j++){					
			
		%>
			<%=j %>
			
		<%
			for(int k='A';k<='Z';k++){
				
		%>
			<%if(list.contains((char)k+"-"+j)){ %>
				<input type="checkbox" name="seat" value="<%=(char)k%>-<%=j%>" disabled>
			
			<%}else{ %>
			<input type="checkbox" name="seat" value="<%=(char)k%>-<%=j%>">
			<%} %>
		<%		
			}
		%><br>
			
		<%
		if(j%3==0){
			%>
			<br>
			<%
					}
			}
		%>
		<input type="submit" value="예약">
		<input type="submit" value="취소">
		</form>
		
		
	</body>
</html>