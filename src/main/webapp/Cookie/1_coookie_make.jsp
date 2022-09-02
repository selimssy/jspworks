<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	// ** 쿠기 생성 방법 **
	// 1. 쿠키 객체를 생성 - 생성자의 매개값으로 쿠키의 이름과 저장할 데이터를 입력
	Cookie apple = new Cookie("apple_cookie", "사과맛쿠키");  // 공백입력 불가 
	Cookie peanut = new Cookie("peanut_cookie", "땅콩맛쿠키");  
	
	
	// 2. 쿠키 클래스의 setter 메서드로 쿠키의 속성들을 설정
	apple.setMaxAge(60 * 60);  // 쿠키의 유호시간 설정(초) : 1시간(3600초)
	peanut.setMaxAge(20);  // 20초
	
	
	// 3. http 응답시 response 객체에 쿠키를 탑재하여 클라이언트로 전송
	response.addCookie(apple);
	response.addCookie(peanut);
%>    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="2_cookie_check.jsp">쿠키 확인하기~</a>

</body>
</html>