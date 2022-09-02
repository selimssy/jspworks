<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	/*
    		1. 생성된 id_cookie 쿠키를 검색하여 쿠키가 존재한다면 로그인 창 대신 브라우저에
    		"이미 로그인한 사용자입니다."를 출력하고 id_cookie가 없는 사용자는 로그인 입력창이
    		등장하도록 구성
    		
    		2. 아이디 기억하기 체크했을 때 작업
    	*/
    	
    	Cookie[] cookies = request.getCookies();
    	
    	String userId = "";
    	boolean isLogin = false;
    	
    	if(cookies != null){ // 일단 cookies가 존재하는지부터 확인해야!(배열을 만들었을 때만 아래 반복문을 돌려라!)
    		for(Cookie c : cookies){
    			if(c.getName().equals("id_cookie")){
    				isLogin = true;
    			}
    			if(c.getName().equals("remember_id")){  // 아이디 기억하기 체크했을 때 작업
    				userId = c.getValue();   
    			}
    		}
    	}
    	
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%	 if(!isLogin){  %>			
		<form action="5_cookie_login_check.jsp" method="post">
			<input type="text" name="id" size="10" placeholder="ID" value="<%=userId %>">
			<input type="checkbox" name="id_remember" value="yes"> <small>아이디 기억하기</small> <br>
			<input type="password" name="pw" size="10" placeholder="PW">
			<br>
			<input type="submit" value="로그인">
		</form>		
	<%	 }else{  %>
			<h2>이미 로그인한 사용자입니다.</h2>
			<a href="6_cookie_login_welcome.jsp">웰컴페이지로~</a>
	<%	 }  %>
	
	
</body>
</html>