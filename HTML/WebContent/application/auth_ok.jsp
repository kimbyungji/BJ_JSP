<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
		1. 앞페이지에서 사용자가 입력한 값과 arr[i] 값을 비교합니다
		힌트 : 앞 페이지에서 arr[i]값을 세션에 저장
		
		2. 두 값이 일치한다면, reserve.jsp로 리다이렉트
			두 값이 일치하지 않는다면, auth.jsp로 리다이렉트
	*/
	String arrValue = (String)session.getAttribute("auth");
	String value = request.getParameter("code");
	
	if(arrValue.equals(value)){
		// 인증 통과
		session.setAttribute("auth_ok", "ok");
		response.sendRedirect("reserve.jsp");
	}else{
		response.sendRedirect("auth.jsp");
	}
%>