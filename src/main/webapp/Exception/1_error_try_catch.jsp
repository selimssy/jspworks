<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% String id = request.getParameter("id"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% try{ %>
		
		<h4> <%= id.toUpperCase() %> </h4>
		
	<% }catch(Exception e){ %>
		
		<h2>죄송합니다. 서버측 오류가 발생했습니다.</h2>
		<p><b>잠시만 기다리시면 빠른 시간 내에 해결하겠습니다.</b></p>
		
	<% } %>
	
</body>
</html>