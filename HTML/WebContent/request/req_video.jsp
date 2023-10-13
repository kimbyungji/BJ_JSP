<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>youtube 영상처리</title>
	</head>
	<body>
		<!-- 
			테이블 페이지에서는 a태그의 url 주소 뒤에 title변수로 각각 식별값을 담아서 이동
			ok 페이지에서는 넘어오는 값에 따라서 if ~ else if의 형태로 다른 화면이 보여지게 처리
		 -->
		 <div align="center"> <!-- 블럭을 만들어 사용하는 태그 -->
		 	<table border="1">
		 		<tr>
		 			<th>이미지</th>
		 			<th>장르</th>
		 			<th>이름</th>
		 			<th>등록일</th>
		 		</tr>
		 		<tr>
		 			<td width="100">
		 				<a href="req_video_ok.jsp?num=1">
		 					<img alt="이미지" src="../img/워킹데드.jpg" width="100" height="100">
		 				</a>
		 			</td>
		 			<td>워킹데드</td>
		 			<td>
		 				<a href="req_video_ok.jsp?num=1">
		 					첫번 째 영상 - 워킹데드 통합본
		 				</a>
		 			</td>
		 			<td>2023.10.04</td>
		 		</tr>
		 		
		 		<tr>
		 			<td width="100">
		 				<a href="req_video_ok.jsp?num=2">
		 					<img alt="이미지" src="../img/존윅.jpg" width="100" height="100">
		 				</a>
		 			</td>
		 			<td>존윅</td>
		 			<td>
		 				<a href="req_video_ok.jsp?num=2">
		 					두번 째 영상 - 존윅 통합본
		 				</a>
		 			</td>
		 			<td>2023.10.04</td>
		 		</tr>
		 	</table>
		 </div>
	</body>
</html>