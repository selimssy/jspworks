<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	

	if(session.getAttribute("user_id") == null){
		response.sendRedirect("3_session_login.jsp");  //  여기서 페이지 이동하고 끝인가보다(아래 코드들 실행 안하고)
	}	
	
	String id = (String)session.getAttribute("user_id");
	String nickname = (String)session.getAttribute("user_nick");
	%>        
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3> <%= nickname %>(<%= id %>)님 환영합니다.</h3>
    <a href="3_session_login.jsp">로그인 페이지</a>
    <a href="../JspObjRequest/7-2_request_album.jsp">앨범리스트</a>
	<a href="6_session_logout.jsp">로그아웃</a>
	
</body>
</html>