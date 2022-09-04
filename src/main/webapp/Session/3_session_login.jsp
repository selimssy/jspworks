<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	/* *{margin: 20px auto} 이거 왜 안되지 */
	fieldset{
		width: 200px
	}
</style>
</head>
<body>
	
	<%  if(session.getAttribute("user_id") != null ){   
		
			String nickname = (String)session.getAttribute("user_nick");   %>
			<h3> <%= nickname %>님이 로그인 중입니다. </h3>
			<a href="5_session_welcome.jsp">메인페이지로</a>
			
	<%  }else{   %>
	
			<form action="4_session_login_check.jsp" method="post">
				<fieldset>
					<legend>로그인 폼</legend>
					<input type="text" name="id" size="10" placeholder="ID"><br>
					<input type="password" name="pw" size="10" placeholder="PW"><br>
					<input type="text" name="nickname" size="10" placeholder="NICKNAME"><br>
					<input type="submit" value="로그인">
				</fieldset>
			</form>
	
	<%  }	%>
	
</body>
</html>