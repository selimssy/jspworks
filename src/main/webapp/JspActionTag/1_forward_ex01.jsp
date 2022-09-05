<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%--
		* jsp action tag 사용법
		-  <jsp: forward 속성=값, ...></jsp:forward>
		- 태그 내부에 종속된 태그가 없다면 닫는 태그는 생략하고 열린태크 끝부분을 />로 마감 가능
		ex) <jsp: forward 속성=값, .../>
 --%>    


<jsp:forward page="2_forward_ex02.jsp"/>
<!-- 저 페이지로 강제이동! 근데 url은 ex01로 뜬다!  -->    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>forward_ex01 페이지입니다.</h3>
	<p>포워드 기능에 의해 이 메세지를 볼 수 없습니다.</p>
	
</body>
</html>