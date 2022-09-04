<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!-- 세션을 모두 삭제함으로써 로그아웃 처리! -->

<%
	session.invalidate();  // 모든 세션 삭제
	response.sendRedirect("3_session_login.jsp");
%>