<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String cm = request.getParameter("cm");
	String kg = request.getParameter("kg");
	double height = Double.parseDouble(cm);
	double weight = Double.parseDouble(kg);
	
	double bmi = weight / ((height/100) * (height/100));
	bmi = Math.round(bmi*1000) / 1000.0;   // 소수 셋째자리까지 출력되도록 반올림
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>체질량 지수(BMI) 계산</h1>
	<hr>
	<p>- 신장: <%= height %>cm </p>
	<p>- 체중: <%= weight %>kg </p>
	<br>
	<p>BMI 지수: <%= bmi %></p><br>
	<% if(bmi > 23){
		out.println("당신은 과체중입니다.");
	}else if(bmi >= 18.5){
		out.println("당신은 정상체중입니다.");
	}else{
		out.println("당신은 저체중입니다.");
	} 
	%>
</body>
</html>