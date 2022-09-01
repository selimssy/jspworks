<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	/** css 우선 적용순위 : 인라인 > 내부 > 외부 **/

	table{border: 1px solid #000; border-collapse: collapse;}

	.login_btn{
		background-color: rgba(255, 192, 203, 0.7);
		width: 60px;
		height: 50px;
		padding:5px;
		border: transparent
	}
	.login_btn:hover{background-color: rgba(255, 192, 203);}
</style>
</head>
<body>

	<div align="center">
		<h3>sendRedirect 로그인 연습</h3><hr>
		<form action="10_response_login_middle.jsp" method="post">
			<table>
				<tr>
					<td><input type="text" name="id" size="12px" placeholder="ID를 입력하세요"></td>
					<td rowspan="2"><input type="submit" value="로그인" class="login_btn"></td>
				</tr>
				<tr>
					<td><input type="password" name="pw" size="12px" placeholder="PW를 입력하세요"></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>