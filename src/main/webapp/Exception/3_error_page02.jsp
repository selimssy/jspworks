<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 이 페이지가 에러 발생했을 때 보여줄 페이지라고 컴퓨터에 말함 -> 
  이렇게 하면 내장객체 exception을 쓸 수 있다! e.getMessage() 등등!! -->    
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 
	 <!-- 에러 발생했을 때 보여줄 페이지! -->
	
	<p> # 3_error_page02.jsp
		요청 처리 과정에서 문제가 발생했습니다. <br>
		빠른 시간내에 문제를 해결하겠습니다ㅠㅠㅠㅠㅠ <br>
		<strong>잠시만</strong> 기다려주세요!!
	</p>
	
	
	
	<p>
		에러 원인 : <em><%= exception.getMessage() %></em>
	</p>	
	
</body>
</html>