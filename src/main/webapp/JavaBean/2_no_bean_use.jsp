<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	아이디 : <%= request.getAttribute("user_id") %><br>
	비밀번호 : <%= request.getAttribute("user_pw") %><br>
	이름 : <%= request.getAttribute("user_name") %><br>
	이메일 : <%= request.getAttribute("user_email") %>
	
</body>
</html>