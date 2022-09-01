<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    
<% ArrayList<Integer> list = new ArrayList<>(); 
	while(list.size() < 6){
		int num = (int)(Math.random() * 45) + 1;
		if(!list.contains(num)){
			list.add(num);
		}
	}
	
	// 리스트의 오름차 정렬방법
	Collections.sort(list);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로또번호 생성 결과</h1>
	<br>
	<!-- 
	<p>이번주 로또번호는 이 번호다!! <br><br>
	<%-- for(int i=0; i < list.size(); i++){ --%>
		<strong> <%--= list.get(i) --%>  &nbsp;</strong> 
	<%--} --%>
	</p>
	 -->
	
	<p> 이번주 로또번호는 이 번호다!!<br><br>
	<% for(int i=0; i<list.size(); i++){
		out.println(list.get(i) + "&nbsp;");
		Thread.sleep(700);  // CPU를 잠시 멈추는 메서드
		out.flush();  // 브라우저의 출력 버퍼를 비우는 메서드
	} %>
	 </p>
	
</body>
</html>