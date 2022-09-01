<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 
	* 사용자의 입력값을 서버로 전송하는 방법
	1. 사용자의 입력데이터를 html의 from 태그를 통해 입력
	2. form 태그의 action 속성에 데이터를 받을 페이지의 URL 주소를 입력
	3. input 태그의 name 속성이 요청파라미터 이름!
	4. 입력창이나 버튼체크에 의해 작성된 값이 요청파라미터의 값으로 처리됨
	5. submit 버튼을 사용하여 서버로 데이터를 전송
	
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="5_request_user_info.jsp">  <!-- but 실무에서는 절대경로를 더 많이쓴다  -->
		<p>
		- 이름: <input type="text" name="user_name" size="10px"><br>
		- ID: <input type="text" name="user_id" size="10px"><br>
		- PW: <input type="password" name="user_pw" size="10px"><br>
		
		- 성별: <input type="radio" name="gender" value="man"> 남성&nbsp;&nbsp; 
			   <input type="radio" name="gender" value="waman"> 여성<br>
			   
		- 취미: <input type="checkbox" name="hobby" value="soccer">축구&nbsp;
		       <input type="checkbox" name="hobby" value="reading">독서&nbsp;
		       <input type="checkbox" name="hobby" value="sleep">수면&nbsp;
		       <input type="checkbox" name="hobby" value="music">음악감상<br>	   
		
		- 지역: 
		<select name="region">
			<option>서울</option>    <!-- html5 부터는 select는 option에 value 안줘도 해당 값을 잘 인식한다! -->
			<option>경기</option>
			<option>제주</option>
			<option>강원</option>
		</select> <br> 
			   
		<!-- 서버로 데이터를 전송하는 버튼!! -->
		<input type="submit" value="확인">
		</p>
	</form>
	
</body>
</html>