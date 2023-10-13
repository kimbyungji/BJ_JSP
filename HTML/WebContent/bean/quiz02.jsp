<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	1. 전달 받은 내용을 받아서 처리
	2. pw와 pw_check가 같다면, User객체 form에서 넘어온 id,pw를 저장하고,
		User객체를 quiz03.jsp로 넘김
		화면에 출력할 내용 : "id님의 회원가입을 축하합니다. 비밀번호는 xxxx입니다."
	3. pw와 pw_check가 다르다면 quiz04.jsp로 이동하여 "회원가입에 실패했습니다."를 출력
--%>

<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String pw_check = request.getParameter("pw_check");
	
	if(pw.equals(pw_check)){%>
		<jsp:useBean id="user" class="com.bean.Quiz" scope="request"/>
		<jsp:setProperty property="id" name="user" value="<%=id %>"/>
		<jsp:setProperty property="pw" name="user" value="<%=pw %>"/>
		<jsp:setProperty property="pw_check" name="user" value="<%=pw_check %>"/>
		<jsp:forward page="quiz03.jsp"/>
		
		
	<%} else{%>
		<jsp:forward page="quiz04.jsp">
	<%}
%>