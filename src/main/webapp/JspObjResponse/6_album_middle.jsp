<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String album = request.getParameter("album"); %>    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		if(album.equals("missing")){
			response.sendRedirect("7_album_missing.jsp");  // 상대경로
		}else if(album.equals("showyourlove")){
			response.sendRedirect("8_album_showyourlove.jsp");
		}
	%>

</body>
</html>