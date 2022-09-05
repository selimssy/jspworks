<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	// 아직 setProperty의 value=""안에 <%= 해서 request.getParameter("id"); 하는건 안되는 듯

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
%>
   
<jsp:useBean id="user" class="kr.co.ali.jspBasic.user.UserBean" scope="request" />    


<%--
	** JSP 액션태그로 setter, getter 사용방법
	
	<jsp:setProperty name="자바빈 id" property="자바빈 클래스의 변수명" value="할당할 값" />
	<jsp:getProperty name="자바빈 id" property="자바빈 클래스의 변수명" />

	- name은 useBean 태그에서 id 속성에 지정한 값 그대로 사용해야
	- property는 값을 넣을 클래스의 변수(필드)명
	- value는 할당할 값을 입력. 표현식이나 EL도 사용 가능

 --%>	    


<jsp:setProperty name="user" property="id" value="<%= id %>" />
<jsp:setProperty name="user" property="pw" value="<%= pw %>" />
<jsp:setProperty name="user" property="name" value="<%= name %>" />
<jsp:setProperty name="user" property="email" value="<%= email %>" />

    
<jsp:forward page="8_userBean_setter_getter_use.jsp" />


