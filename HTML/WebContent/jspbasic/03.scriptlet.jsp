<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
		// out.println(), break를 이용하여 4단
		int i=1;
		while(true){
			out.println("4*"+i+"="+4*i+"<br>");	//인자 사용법
			out.println("==================<br>");
			if(i==9){
				break;
			}
			i++;
		}
		%>
		
		<hr>
		
		<%
			for(i=0;i<20;i++){
				// html 공백 상수 : &nbsp;
		%>
				<input type = "checkbox">
		<%
			}
		
		%>
		
		
	</body>
</html>