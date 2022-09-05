<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="kr.co.ali.jspBasic.user.UserBean"%>
    
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	
	UserBean user = new UserBean(id, pw, name, email); // 이렇게하면 this.id=id 등등 다 완료된 것!
	request.setAttribute("user", user);	// UserBean 객체를 담는다	
%>



<jsp:forward page="4_bean_use.jsp" />