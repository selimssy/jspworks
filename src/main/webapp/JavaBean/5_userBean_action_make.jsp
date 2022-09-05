<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<jsp:useBean id="user" class="kr.co.ali.jspBasic.user.UserBean" scope="request" />
<!--  
	** id는 객체 이름(우리가 지정하는 것)
	** class는 userBean 클래스의 풀 경로
	** scope는 어떤 범위로 사용할 것인지(request, session, application 등)  // 생략하면 page로 설정된다
	
	저 한 줄이 아래 두 줄을 합친거다!!
	UserBean user = new UserBean(id, pw, name, email); //me: 근데 this.id 이 기능은 빠진거 아닌가..... 
	request.setAttribute("user", user);  //  이거 해주는게 scope="request" 
 -->

<%
	user.setId(request.getParameter("id"));
	user.setPw(request.getParameter("pw"));
	user.setName(request.getParameter("name"));
	user.setEmail(request.getParameter("email"));
%>



<jsp:forward page="6_userBean_action_use.jsp" />


