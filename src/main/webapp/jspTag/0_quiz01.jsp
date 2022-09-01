<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    
<%! int total; %>
<% total++;
   int num = (int)(Math.random() * 7) + 2; %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>페이지 누적 요청 수 : <%= total %></p>
	<p>매 <strong>10</strong>번째 방문자에게는 기프티콘을 드립니다.</p>
	<% if(total % 10 == 0){
		out.println("당첨되었습니다!<br>");
	} %>
	
	<hr>
	
	<h1>랜덤 구구단(<%= num %>단)</h1>
	<p>이번에 나온 구구단은 <%= num %>단입니다.</p><br>
	
	<% for(int i=1; i<=9; i++){
		out.println(num + " X " + i + " = " + (num * i) + "<br>");
	} %>
	
</body>
</html>