<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{border-collapse: collapse;}
</style>
</head>
<body>
	
	<!-- 국어, 영어, 수학점수를 입력받아 전송하는 폼 작성 -->
	
	<div align="center">
		<form action="13_score_bean_make.jsp" method="post">
			<table border="1">
				<tr>
					<th>국어</th>
					<td><input type="text" name="kor" size="10px"></td>
				</tr>
				<tr>
					<th>영어</th>
					<td><input type="text" name="eng" size="10px"></td>
				</tr>
				<tr>
					<th>수학</th>
					<td><input type="text" name="math" size="10px"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="확인"></td>
				</tr>
			</table>
		</form>
	</div>
	
</body>
</html>