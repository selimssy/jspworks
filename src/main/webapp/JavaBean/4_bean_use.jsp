<%@page import="kr.co.ali.jspBasic.user.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% UserBean user =  (UserBean)request.getAttribute("user");%>
	
	아이디 : <%= user.getId() %> <br>
	비밀번호 : <%= user.getPw() %> <br>
	이름 : <%= user.getName() %> <br>
	이메일 : <%= user.getEmail() %> <br>
</body>
</html>