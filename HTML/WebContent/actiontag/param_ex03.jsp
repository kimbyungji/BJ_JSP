<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String nick = request.getParameter("nick");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>param_ex03.jsp</title>
	</head>
	<body>
		이름 : <%=name %><br>
		닉네임 : <%=nick %><br>
	</body>
</html>