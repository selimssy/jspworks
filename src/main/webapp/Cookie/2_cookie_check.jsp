<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 클라이언트에 저장된 쿠기를 가져오는 방법
	Cookie[] cookies = request.getCookies();   // 다 가져오는 메서드밖에 없다
	
	boolean flag = false;  // 땅콩쿠키 소멸되었는지 확인하기 위한 변수
	
	for(Cookie c : cookies){
		String cookieName = c.getName();  // 쿠키 이름을 얻어오는 메서드
		if(cookieName.equals("peanut_cookie")){
			out.println("<h3>땅콩 쿠키가 존재합니다.</h3>");
			String value = c.getValue();  // 쿠키의 값을 읽어오는 메서드
			flag = true;  // 땅콩쿠기 찾았으면 flag = true
			break;
		}
	}
	
	if(!flag){
		out.println("<h3>땅콩 쿠키가 사라졌습니다.</h3>");
	}
	
%>    
    
    
<a href="3_cookie_all.jsp">모든 쿠키 보기~</a>    
<!-- html 내부 아니어도 그냥 이렇게 a태그 해도 되나보네.....  -->>
