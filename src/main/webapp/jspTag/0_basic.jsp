<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>구구단 2단</h2>
	<% for(int i=1; i <=9; i++){
		out.println("2 x " + i + " = " + (2 * i) + "<br>");  // out.println() 안에 할 때는 태그 넣어줄 때 쌍따옴표 "" 안에다가 넣어야!!
	} %>
</body>
</html>