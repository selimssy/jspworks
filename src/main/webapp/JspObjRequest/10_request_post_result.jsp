<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// post 방식을 통해 한글 데이터를 전송하려면 아래 코드 한 줄 넣어줘야!!
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<p>
		# 아이디 : <%= id %><br>
		# 비밀번호 : <%= pw %><br>
		# 이름: <%= name %><br>
		<!-- # 이름 : <%-- =request.getParameter("name") --%> 이렇게해도 된다!!   -->
	</p>
	
</body>
</html>