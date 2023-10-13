<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		1. 아이디와 비밀번호를 cookie_login.jsp로부터 받음
		2. id=abc이고, pw=1234라면 로그인 성공이라고 간주
			user_id, id) 값을 가지는 쿠키를 생성
		3. 쿠키 문법을 사용하여 쿠키를 전송. cookie_welcome.jsp로 이동
		4. 아이디와 비밀번호가 틀렸다면, cookie_login.jsp로 이동
		5. welcome 페이지에서는 cookie 값을 꺼내서 "id님 환영합니다."가 출력되게 한다.
	*/
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	// 아이디를 기억하기 위한 idCheck 값 받기
	String idCheck = request.getParameter("idCheck");
	
	if(id.equals("abc")&&pw.equals("1234")){
		Cookie idCoo = new Cookie("user_id", id);
		idCoo.setMaxAge(60);
		response.addCookie(idCoo);
		// id Check가 있는 경우 - 쿠키생성
		if(idCheck!=null){
			Cookie check = new Cookie("idCheck",id);
			check.setMaxAge(1800);
			response.addCookie(check);
		}
		response.sendRedirect("cookie_welcome.jsp");
	}else{
		response.sendRedirect("cookie_login.jsp");
	}
%>    

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>cookie_login_ok.jsp</title>
	</head>
	<body>
		
	</body>
</html>