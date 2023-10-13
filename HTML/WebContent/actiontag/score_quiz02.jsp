<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math = request.getParameter("math");
	
	int k = Integer.parseInt(kor);
	int e = Integer.parseInt(eng);
	int m = Integer.parseInt(math);
	
	double avg = (double)(k+e+m)/3;
	
	if(avg>=60){
%>
		<jsp:forward page="score_quiz03.jsp">
			<jsp:param value="<%=avg %>" name="avg"/>
		</jsp:forward>
<%
	}else{
%>
		<jsp:forward page="score_quiz04.jsp">
			<jsp:param value="<%=avg %>" name="avg"/>
		</jsp:forward>
<%
	}
%>