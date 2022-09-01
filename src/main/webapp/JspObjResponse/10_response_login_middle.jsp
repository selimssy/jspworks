<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--  
	// 저 아래에 같이쓰자!!
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
--%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%--
		if(!id.equals("abc1234")){
			response.sendRedirect("11_response_id_fail.jsp");
			return;
		}
		
		if(!pw.equals("xyz9876")){
			response.sendRedirect("12_response_pw_fail.jsp");
			return;
		}
		
		response.sendRedirect("13_response_welcome.jsp");
		
		
	--%>
	
	<%
		request.setCharacterEncoding("utf-8");   // post일땐 습관적으로 쓰자!
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("abc1234")){
			if(pw.equals("xyz9876")){
				response.sendRedirect("13_response_welcome.jsp");
			}else{
				response.sendRedirect("12_response_pw_fail.jsp");
			}
		}else{
			response.sendRedirect("11_response_id_fail.jsp");
		}
		
	%>
	
</body>
</html>