<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{border-collapse: collapse;}
	input{border: transparent}
	tr:nth-of-type(3) td {text-align: center}
	tr:nth-of-type(3) td input{border: 1px solid #ccc}
</style>
</head>
<body>
	
	<form action="10_bean_form_check.jsp" method="post">
		<div> <!-- t는 여기서 align="center"를 했다 -->
			<table border="1">
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id" size="10px"></td>
					<th>비밀번호</th>
					<td><input type="password" name="pw" size="10px"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" size="10px"></td>
					<th>이메일</th>
					<td><input type="email" name="email" size="10px"></td>
				</tr>
				<tr>
					<td colspan="4"><input type="submit" value="회원가입"></td> <!-- t는 여기서 align="center"를 했다 -->
				</tr>
			</table>
		</div>
	</form>
	
</body>
</html>