<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 
	액션태그를 사용하여 ScoreBean의 객체를 request 범위로 생성하고 
	setProperty를 사용하여 객체 내부 데이터에 파라미터데이터를 셋팅한 뒤
	파라미터 데이터 3개와 총점, 평균을 구하여 5개를 모두 객체에 포장하여
	14_score_bean_result.jsp로 전송(forward)
 -->

    
<jsp:useBean id="score" class="kr.co.ali.jspBasic.score.ScoreBean" scope="request" />  <!-- 객체생성! --> 

<jsp:setProperty name="score" property="*" />
 
 
 <%
 	int total = score.getKor() + score.getEng() + score.getMath();
 	double avg = (double)total / 3;
 %>
 
 <jsp:setProperty name="score" property="total" value="<%= total %>" />
 <jsp:setProperty name="score" property="avg" value="<%= avg %>" />
 
<jsp:forward page="14_score_bean_result.jsp" />

 