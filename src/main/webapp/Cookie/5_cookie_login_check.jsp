<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
	// post방식 한글 처리
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String check = request.getParameter("id_remember");  // 체크 안했으면 null
	
	
	if(id.equals("abc1234") && pw.equals("1234")){ // 원래 더 구분해야 하는데 편의상 이렇게
		Cookie idCookie = new Cookie("id_cookie", id);
		idCookie.setMaxAge(30);  // 30초
		response.addCookie(idCookie);
		
		if(check != null){
			Cookie idMemory = new Cookie("remember_id", id);
			idMemory.setMaxAge(15);
			response.addCookie(idMemory);
		}
		
		response.sendRedirect("6_cookie_login_welcome.jsp");
	}else{
		response.sendRedirect("4_cookie_login.jsp");
	}
	
%>