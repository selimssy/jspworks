<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*" %>    
<%
	UUID uuid=  UUID.randomUUID(); // UUID 객체 리턴(인증기호 생성해주는 객체)
	
	String[] uuids = uuid.toString().split("-");  // 문자로 변환한 후 "-"를 기준으로 분리해서 배열로 담음
	
	System.out.println(Arrays.toString(uuids));
	System.out.println(uuids[1]);  // 원하는 부분 선택해서 사용
	
	session.setAttribute("auth_code", uuids[1]);  // 세션으로 데이터 저장! 
	// 여기서 인증 1분 이내로 완료하세요 이 기능 쓰려면 세션 유호시간 60초로!(setMaxInactiveInterval)
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>회원 인증페이지</h2>
	<h1>인증문자: <del><%= uuids[1] %></del></h1>
	<form action="6_concert_auth_check.jsp">
		<small>위의 인증문자를 입력해주세요!</small>
		<input type="text" name="code" size="5">
		<input type="submit" value="확인">
	</form>
	
</body>
</html>