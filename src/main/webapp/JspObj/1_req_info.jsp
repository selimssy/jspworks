<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// jsp에서는 내장객체 request를 바로 사용하면 된다!!
	StringBuffer reqUrl = request.getRequestURL();  // URL
	String reqUri = request.getRequestURI();  // URI
	String protocol = request.getProtocol();  // 프로토콜
	String conPath = request.getContextPath();  // Context 루트 경로
	int serverPort = request.getServerPort();  // 서버포트번호
	String userIP = request.getRemoteAddr();   // IP주소
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<P>
		# 요청 URL : <%= reqUrl %> <br>
		# 요청 URI : <%= reqUri %> <br>
		# 요청 프로토콜 : <%= protocol %> <br>
		# 요청 컨텍스트 루트 경로 : <%= conPath %> <br>
		# 서버 포트번호 : <%= serverPort %> <br>
		# ip 주소 : <%= userIP %> <br>
	</P>
</body>
</html>