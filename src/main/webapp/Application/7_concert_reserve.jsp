<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
    
<%	
	// 인증 안했으면 인증페이지로
	if(session.getAttribute("auth_pass") == null){
		response.sendRedirect("6_concert_auth_check.jsp");
	}

	
	// 이미 선점된 좌석은 disabled 처리
	List<String> list = new ArrayList<>();
	if(application.getAttribute("complete_list") != null){
		list = (List<String>)application.getAttribute("complete_list");
	}

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	/*div{margin: 0 auto;  } 여기선 이게 안먹히네...  */
</style>
</head>
<body>
	
	<div align="center">
		<h2>콘서트 좌석 예매</h2>
		<h4>예매할 죄석을 체크한 후 예약 버튼을 눌러주세요.</h4>
	</div>
	<hr>
	
	<form action="8_concert_reserve_check.jsp">
		
		<p align="center">
			<strong>좌석 배치도</strong>
			<br>&nbsp;&nbsp;&nbsp;&nbsp;
			<% for(char c='A'; c <= 'Z'; c++){  // 오왕... %>
				<small> <%= c %> </small>&nbsp;
			<% } %> <br>
			
			
			<% for(int r=1; r<=3; r++){ %>
				<%= r %>
				<% for(char c='A'; c<='Z'; c++){ %>
				
					<% if(list.contains(c + "-" + r)){ %>
						<input type="checkbox" name="seat" value="<%=c%>-<%=r%>" disabled> 
					<% }else{ %>
						<input type="checkbox" name="seat" value="<%=c%>-<%=r%>">
					<% } %>
					
				<% } %>
				<br>
			<% } %> <br>
				
			
			<% for(int r=4; r<=6; r++){ %>
				<%= r %>
				<% for(char c='A'; c<='Z'; c++){ %>
					
					<% if(list.contains(c + "-" + r)){ %>
						<input type="checkbox" name="seat" value="<%=c%>-<%=r%>" disabled> 
					<% }else{ %>
						<input type="checkbox" name="seat" value="<%=c%>-<%=r%>">
					<% } %>
					
				<% } %>
				<br>
			<% } %>
		</p>
		<input type="submit" value="예약">
		<input type="reset" value="초기화">
	</form>
	
</body>
</html>