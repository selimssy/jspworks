<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 
		** form태그 없이 앨범사진, 제목 클릭만 해도 데이터 넘어가게 작업하기!!★ **
		a 태그의 href = "~~.jsp?album=missing"  이런식으로 .jsp뒤에 ?하고 파라미터이름=값 이렇게 넣어준다!!★★
	-->
	
	<div align="center">
			<table border="1">
				<thead>
					<tr>
						<th>앨범 커버</th>
						<th>가수</th>
						<th>앨범 제목</th>
						<th>발매일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a href="8_request_album_result.jsp?album=missing"><img src="./img/01.jpg" width="200px" height="200px"></a></td>
						<td>BTOB</td>
						<td><a href="8_request_album_result.jsp?album=missing">BTOB Brother Act.</a></td>
						<td>2017.10.16</td>
					</tr>
					<tr>
						<td><a href="8_request_album_result.jsp?album=showyourlove"><img src="./img/02.jpg" width="200px" height="200px"></a></td>
						<td>BTOB 4U</td>
						<td><a href="8_request_album_result.jsp?album=showyourlove">BTOB 4U INSIDE</a></td>
						<td>2020.11.16</td>
					</tr>
				</tbody>
			</table>
	</div>


</body>
</html>