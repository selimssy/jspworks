<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*" %>

<%
	// 예매가 확정된 좌석정보를 저장할 리스트(중복 안된 좌석들만 저장)
	List<String> list = new ArrayList<>();

	if(application.getAttribute("complete_list") != null){
		list = (List<String>)application.getAttribute("complete_list");
	}
	
	// 사용자가 예매를 희망하는 좌석정보가 들어있는 배열(선점된 좌석을 중목 예약해도 데이터가 넘어옴)
	String[] seats = request.getParameterValues("seat");
	
	
	// 예약 선점여부를 확인할 로직
	// 예약 확정 전에 임시로 좌석정보를 저장할 리스트
	List<String> temp = new ArrayList<>();
	
	// 몇자리를 예약할 수 있는지 체크할 변수
	int count = 0;
	for(String s : seats){
		if(list.contains(s)){
			break;
		}else{
			temp.add(s);
			count++;
		}
	}
	
	if(count == seats.length){
		// addAll() 메서드 : 리스트 내부에 리스트 객체들을 전부 추가하는 메서드
		list.addAll(temp);
	}
	
	application.setAttribute("complete_list", list);  // list를 application에 담는다(브라우저 꺼져도 남아있게 데이터 하기 위해)
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>콘서트 예매 처리 결과</h2>
		<p>
			선택한 좌석<br>
			<%
				for(String s : seats){
					out.println("<b>[ " + s + " ]</b>");
				}
			%>
			<br>가 예매 신청되었습니다.
		</p>
		<p>
			예매 신청 결과:<%= (count == seats.length) ? "성공" : "실패"%>
			<br>
			<% if(count != seats.length){
				out.println("예매하고자 하는 좌석이 이미 선점되었습니다.");
			} %>
			<br>
			<a href="7_concert_reserve.jsp">추가 예매하기</a>
		</p>
	</div>
</body>
</html>