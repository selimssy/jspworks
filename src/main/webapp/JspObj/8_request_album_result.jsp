<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String album = request.getParameter("album"); %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% if(album.equals("missing")){ %>
		<div align="center">
			<h2>선택하신 앨범 정보</h2>
			<p>타이틀 곡 : 그리워하다 </p>
			<hr>
			<h3>타이틀 곡 MV</h3>
			<iframe width="800" height="600" src="https://www.youtube.com/embed/wDkjWSt3HOM" title="BTOB(비투비) - '그리워하다' Official Music Video" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture?rel=0;apm;autoplay=1" allowfullscreen></iframe>
			<!-- rel=0;apm;autoplay=1  자동재생 -->
		</div>
	<%} else if(album.equals("showyourlove")){ %>
		<div align="center">
			<h2>선택하신 앨범 정보</h2>
			<p>타이틀 곡 : show your love </p>
			<hr>
			<h3>타이틀 곡 MV</h3>
			<iframe width="800" height="600" src="https://www.youtube.com/embed/JBEdgsea9sM" title="비투비 포유 (BTOB 4U) - 'Show Your Love' Official Music Video" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture?rel=0;apm;autoplay=1" allowfullscreen></iframe>
			<!-- rel=0;apm;autoplay=1  자동재생 -->
		</div>
	<%} %>
	
</body>
</html>