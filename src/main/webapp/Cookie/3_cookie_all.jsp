<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	Cookie[] cookies = request.getCookies();

	for(Cookie c : cookies){
		String n = c.getName();
		String v = c.getValue();
		out.println(n + " : " + v + "<br>");
		out.println("------------------<br>");
	}

%>

