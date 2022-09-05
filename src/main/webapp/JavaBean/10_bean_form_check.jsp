<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); // 이건 해줘야!! %>

<jsp:useBean id="user" class="kr.co.ali.jspBasic.user.UserBean" scope="request" />



<!-- 
	* 파라미터의 이름과 자바빈 클래스의 멤버변수명이 일치할 경우
	액션태그 setProperty의 속성 property 값을 *로 지정하면
	자동으로 파라미터값을 읽어서 자바빈 클래스 변수에 저장한다.
	
	즉, getParameter로 각각 읽어오는 작업과 setProperty로 값을 각각 지정하는 작업을
	한 줄로 처리할 수 있다!!
 -->

<jsp:setProperty name="user" property="*" />


<jsp:forward page="11_bean_form_result.jsp" />