<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
		- 세션은 쿠키와 마찬가지로 http 통신 데이터를 유지하기 위한 수단으로 사용한다(브라우저 끄기 전까지 or 세션 유효시간 만료 전까지 데이터 유지)
		
		- 세션에 데이터를 저장할 때는 JSP 내장객체 session이 지원하는 setAttribute() 메서드를 사용한다
		
		- 해당 메서드의 첫 번째 매개값으로 세션의 이름을 정하고, 두 번째 매개값으로 세션에 저장할 값을 넣는다
		- 쿠키의 경우 저장할 값이 String 이지만 세션은 Object 객체이다.(따라서 getAttribute() 메서드로 받아올 때 String, Stirng[] 등으로 강제형변환 해줘야!)
	*/
	
	session.setAttribute("nickname", "홍길동");
	session.setAttribute("hobbys", new String[] {"축구", "게임", "독서"});
	
	
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<a href="2_session_check.jsp">세션 데이터 활용하기</a>
	
</body>
</html>