<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/*
		-세션에 저장된 데이터는 브라우저 창이 종료될 때까지 혹은 세션의 유효시간이 만료되기 전까지
		웹 어플리케이션의 모든 jsp 페이지에서 사용할 수 있다
		
		- 세션에 저장된 데이터를 가져오려면 session 객체의 getAttribute() 메서드를 사용하며
		매개값으로 가져올 데이터의 세션이름을 적는다.
	*/	

	String nickname = (String)session.getAttribute("nickname");
	String[] hobbys = (String[])session.getAttribute("hobbys");  // 이렇게 배열 형변환도 되네..
	
	out.println(nickname + "<br>");
	out.println(Arrays.toString(hobbys) + "<br>");
	out.println("--------------------------------<br>");
	
	
	
	// 세션의 유효시간 설정 (디폴트 : 30분)
	session.setMaxInactiveInterval(60 * 60);  // 세션 유효시간 1시간으로 설정
	
	int sTime = session.getMaxInactiveInterval();  // 세션의 유효시간 반환
	out.println("세션의 유효시간 : " + sTime + "초<br>");
	out.println("--------------------------------<br>");
	
	
	
	// 특정 세션 데이터 삭제
	session.removeAttribute("nickname");
	nickname = (String)session.getAttribute("nickname");
	out.print("삭제 후 nickname 값 : " + nickname + "<br>");
	out.println("--------------------------------<br>");
	
	
	
	// 모든 세션 데이터 삭제(로그아웃 할 때 사용)
	session.invalidate();
	
	if(request.isRequestedSessionIdValid()){
		out.println("유효한 세션이 존재함");
	}else{
		out.println("유효한 세션이 존재하지 않음");
	}
%>