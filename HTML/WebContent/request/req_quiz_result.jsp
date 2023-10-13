<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	Double cm = Double.parseDouble(height);
	Double kg = Double.parseDouble(weight);
	double bmi = Math.round(kg/(cm/100*cm/100))  ;
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		키 : <%= height %><br>
		나이 : <%= weight %><br>
		BMI : <%= bmi %><br>
		
		<%
			if(bmi>=25){
		%>
				과체중
		<%		
			}else if(bmi<=18){
		%>
				저체중
		<%
			}else{
		%>
				정상
		<%
			}
		%>
	</body>
</html>