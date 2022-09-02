<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
	Cookie[] cookies = request.getCookies();

	String userId = null;
	
	for(Cookie c : cookies){
		if(c.getName().equals("id_cookie")){
			userId = c.getValue();
			break;
		}
	}
	
	
	
	if(userId != null){
		out.println("<p>" + userId + "님 환영합니다!</p>");
		out.println("<a href='4_cookie_login.jsp'>로그인 화면으로 돌아가기</a>");
	}else{
		out.println("<p>시간이 지나 자동 로그아웃 되었습니다.</p>");
		out.println("<a href='4_cookie_login.jsp'>다시 로그인하기</a>");  // 쌍따 안에 홀따로!
	}
	
%>