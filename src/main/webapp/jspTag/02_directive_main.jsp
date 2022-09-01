<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="02_directive_header.jspf" %>  <!-- include로 이렇게 삽입한다!!★ -->
	<h2>방문자 수: <%= visit %></h2>
	<p>안녕하세요~~</p>
	<p>반갑습니다~~~~</p>
	<%@ include file="02_directive_footer.jspf" %>
</body>
</html>