<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String num = request.getParameter("num");
	Integer sel = Integer.parseInt(num);
%>    

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>req_video 결과</title>
	</head>
	<body>
		<%
			if(num==null){
		%>
				잘못된 접근입니다.
		<%
			}else if(sel==1){	// num을 비교할 때(num.equals("1"))
		%>
		<div align="center">
			<h2>워킹데드 동영상</h2>
			<p> 첫번째, 워킹데드 </p>
			<hr>
			<iframe width="640" height="480" src="https://www.youtube.com/embed/ggTuJB4WPPs"
			 title="자기 전에 이 영상 보면 진짜 큰일 납니다.. 《워킹데드 전체 시즌 총정리》" 
			 frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
		</div>
		<%
			}else if(sel==2){
		%>
			<div align="center">
			<h2>존윅 동영상</h2>
			<p> 두번째, 존윅 </p>
			<hr>
			<iframe width="640" height="480" src="https://www.youtube.com/embed/B3juOQnfr8E"
			 title="존 윅4 대비 2023년 &#39;존 윅 시리즈 완벽 정리&#39; 최신판 존 윅 모든 시리즈 1시간 안에 몰아보기" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>
			
		<%
			}
		%>
	
	</body>
</html>