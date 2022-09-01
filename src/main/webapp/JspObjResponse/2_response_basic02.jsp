<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%--  입혁한 나이에 따라 각각 다른 페이지로 강제 이동시키기 위한 중간(매개) jsp파일!! --%>


<%
	String strAge = request.getParameter("age");
	int age = Integer.parseInt(strAge);
	
	String url = "http://localhost:8080/jspBasic/JspObjResponse/3_response_basic_ok.jsp";
	
	if(age >= 20){
		// response 객체가 제공하는 sendRedirect() 메서드의 매개값으로 이동시킬 URL 주소를 적으면
		// 해당 페이지로 강제 이동한다!!
		response.sendRedirect(url);  // 절대경로(실무에서는 절대경로를 더 많이쓴다)
	}else{
		response.sendRedirect("4_response_basic_No.jsp");  // 상대경로
	}
%>