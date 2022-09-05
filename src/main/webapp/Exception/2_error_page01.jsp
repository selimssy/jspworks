<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 이렇게 하면 에러페이지01에서 에러가 나면 02페이지로 이동한다!!(url은 그대로 01로 떠있다!)  -->    
<%@ page errorPage="3_error_page02.jsp" %>    





<!-- 
		** 에러 페이지의 우선순위 **
		- 에러 페이지를 여러 방법으로 지정한 경우 다음의 우선순위에 따라 에러 페이지를 선택한다
		
		1. 페이지 지시자 태그의 errorPage 속성에 지정한 페이지 (위와 같이)
		2. web.xml에 지정한 에러 타입에 따른 페이지
		3. web.xml에 지정한 응답 상태 코드에 따른 페이지
		4. 위 3개의 경우에 해당하지 않으면 톰캣이 제공하는 에러 페이지
 -->




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%= request.getParameter("id").toLowerCase() %>
	
</body>
</html>