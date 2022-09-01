<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%! List<String> party = new ArrayList<>();
	int job1;
	int job2;
	int job3;
	int job4;
	int job5; %>
	

 <% int num = (int)(Math.random() * 5) + 1; 
 String job;
 

 switch(num){
 case 1:
	   job = "도적";
	   job1++;
	   break;
 case 2:
	   job = "사냥꾼";
	   job2++;
	   break;
 case 3:
	   job = "마법사";
	   job3++;
	   break;
 case 4:
	   job = "전사";
	   job4++;
	   break;
 case 5:
	   job = "사제";
	   job5++;
	   break;
	  
 }
 %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>당신의 역할</h1>
	<p>당신에게 부여된 역할은 [<%=  %>]입니다.</p>
	<p>현재 파티에 당신과 같은 역할을 가진 플레이어는 <%=  %>명입니다.</p>
	<br>
	<p><b>현재 파티 구성</b></p>
	<p>[
		<% for(int i=0; i<party.size(); i++){
			if(i == party.size()-1){
				out.println(party.get(i));
			}else{
				out.println(party.get(i) + ", ");
			}
		} %>
	](<%= party.size() %>명 참가중)</p>
</body>
</html>