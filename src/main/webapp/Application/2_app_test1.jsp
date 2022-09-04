<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="1_app_basic.jsp" %>    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3> 세션 방문자 수 : <%= count_session %></h3>
	<h3> application 방문자 수 : <%= count_app %></h3><hr>
	
	<h1 style="color:red">테스트1</h1>
	<h3>session, application 비교 테스트용 페이지</h3>
	<a href = "3_app_test2.jsp">테스트2 페이지로</a> &nbsp; &nbsp; &nbsp; 
	<a href = "4_app_test3.jsp">테스트3 페이지로</a>
</body>
</html>