<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kr.co.ali.jspBasic.user.UserBean"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:useBean id="user" class="kr.co.ali.jspBasic.user.UserBean" scope="request" />
	<!-- 위임받은 페이지에서 위의 코드를 그대로 붙여넣으면 생성했던 객체를 꺼내쓰게 된다!
		즉, UserBean user =  (UserBean)request.getAttribute("user"); 
	    이 코드의 기능을 해주는 것!! -->
		  
	<%-- UserBean user =  (UserBean)request.getAttribute("user");--%>
	
	아이디 : <%= user.getId() %> <br>
	비밀번호 : <%= user.getPw() %> <br>
	이름 : <%= user.getName() %> <br>
	이메일 : <%= user.getEmail() %> <br>
</body>
</html>