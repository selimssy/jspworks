<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = request.getParameter("user_name");
	String id = request.getParameter("user_id");
	String pw = request.getParameter("user_pw");
	String gender = request.getParameter("gender");
	String region = request.getParameter("region");
	String[] hobbys = request.getParameterValues("hobby");  // 받는 값이 여러개일 때는 getParameterValues
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>form 태그로 전달된 데이터 읽기 실습</h2>
	<p>
	# 이름 : <%= name %><br>
	# id : <%= id %><br>
	# pw : <%= pw %><br>
	# 성별 : <%= gender %><br>
	# 지역 : <%= region %><br>
	# 취미 : <%= Arrays.toString(hobbys) %><br>
	</p>
</body>
</html>