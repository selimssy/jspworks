<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%--
			# directive 태그의 include:
			ex) <%@ include file="삽입할 페이지" %>
			- 페이지 내부에서 공유하면서 써야할 변수나 메서드를 다른 파일에 선언해두고 삽입하여 사용
			- 주로 자바소스코드
			
			
			
			# 액션태그의 include
			ex) <jsp:include page="삽입할 페이지">
			- 단순히 UI를 복사하고 싶을 대 주로 사용
			- header, footer 등
	 --%>



	
	<h2>안녕하세요~~ 여기는 1번 페이지입니다.</h2>
	
	<%@ include file="4_ include_ex02.jsp" %>
	<jsp:include page="4_ include_ex02.jsp"/>
	
	<h2>다시 여기는 1번 페이지입니다.</h2>
</body>
</html>