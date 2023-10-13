<%@page import="java.util.Collections"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	int total = 0;

public int rand(){
	Random ran = new Random();
	int num = ran.nextInt(9)+1;
	
	return num;
}
public int lotto(){
	Random ran = new Random();
	int num = ran.nextInt(45)+1;
	
	return num;
}
%> 

<%
	total++;
	int rn = rand();
%>
   
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP태그 연습2</title>
	</head>
	<body>
		<p>
		페이지 누적 요청 : <%= total %> <br>
		<!-- 10번째 방문자가 접속시 당첨되었습니다.를 출력하게 만들어 주세요 -->
		매 10번째 방문자에게 기프티콘을 드립니다.
		</p>
		<%
		if(total%10==0){
			out.println("당첨되었습니다.");
		}
		%>
		
		<h2>랜덤 구구단</h2>
		이번에 랜덤 구구단은 ~단 입니다.<br>
		<!-- 하단에 해당 구구단의 내용을 출력 -->
		<%
		for(int i=1;i<10;i++){
			out.println(rn+"*"+i+" = "+rn*i+"<br>");
		}
		%>
	
		<!--
		ArrayList를 사용하여 1 ~ 45까지 랜덤한 번호를 발생히키고 리스트에 담으세요. 
		
		body태그에서
		이번주 로또번호 [1,2,3,4,5,6] 형식으로 출력
		
		중복 및 오름차순 정렬로 결과를 출력하세요.		
		-->
		
		<%
			HashSet<Integer> li = new HashSet<>();
			out.print("HashSet lotto"+"<br>");
			while(li.size()<6){
				li.add(lotto());
			}
			
			ArrayList<Integer> list = new ArrayList<>(li);
			Collections.sort(list);
			out.print(list+"<br>");
			
			
			out.print("Arraylist lotto"+"<br>");
			
			ArrayList<Integer> list2 = new ArrayList<>();
			
			while(list.size()<6){
				int loto = lotto();
				for(int num:list2){
					if(loto==num){
						break;
					}else{
						list2.add(loto);
					}
				}				
			}
			Collections.sort(list);
			out.print(list+"<br>");
		
		%>
		
	</body>
</html>