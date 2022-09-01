<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div align="center">
		<form action="8_request_album_result.jsp">
			<table border="1">
				<thead>
					<tr>
						<th></th>
						<th>앨범 커버</th>
						<th>가수</th>
						<th>앨범 제목</th>
						<th>발매일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="radio" name="album" value="missing"></td>
						<td><img src="./img/01.jpg" width="200px" height="200px"></td>
						<td>BTOB</td>
						<td>BTOB Brother Act. </td>
						<td>2017.10.16</td>
					</tr>
					<tr>
						<td><input type="radio" name="album" value="showyourlove"></td>
						<td><img src="./img/02.jpg" width="200px" height="200px"></td>
						<td>BTOB 4U</td>
						<td>BTOB 4U INSIDE </td>
						<td>2020.11.16</td>
					</tr>
					<tr>
						<td colspan="5"><input type="submit" value="확인"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	
</body>
</html>