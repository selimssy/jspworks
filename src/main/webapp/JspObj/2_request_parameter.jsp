<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 
	** 요청 파라미터(request parameters) **
	
	- 클라이언트 측에서 서버로 데이터를 요청할 때 전달되는 값들을 담은 변수를 요청 파라미터라 한다.
	- 요청 파라미터는 URL주소 뒤에 ?를 붙인 후     파라미터변수명=값     형식을 통해 서버로 데이터를 전달한다.
	- 요청 파라미터가 여러 개일 경우 &기호로 나열하여 전달한다.
	
 --%>
 
 
 <%
 	// 클라이언트에서 전송된 요청 파라미터의 값을 읽는 방법 
 	//  : 내장객체 request의 메서드 getParameter("파라미터 이름") 
 	// request.getParameter("파라미터 이름") 형태 
 	// 무조건 String으로 반환!!(클라이언트에서 int형으로 보내도 String으로 반환한다! -> parseInt 등으로 변환해야)
 	String breakfast = request.getParameter("bf");
 	String lunch = request.getParameter("lunch");
 	String dinner = request.getParameter("dinner");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>요청 파라미터 읽기 연습!(reqeust.getParameter("파라미터 이름"))</h2>
	
	<p>
	-아침밥 : <%= breakfast %> <br>
	-점심밥 : <%= lunch %> <br>
	-저녁밥 : <%= dinner %> <br>
	</p>
</body>
</html>