<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<% request.setCharacterEncoding("utf-8"); %>


<%-- 
		** jsp:param을 사용하면 jsp:forward로 인해 위임된 위임된 페이지로
			데이터를 추가로 넣어서 가져갈 수 있다
			(요청페이지에서 input을 통해 넘어온 데이터도 물론 같이 위임된다!)
			
			(※ sendredirect 는 요청페이지에서 넘어온 데이터 넘어오지 않는다!!!)
 --%>

<jsp:forward page="7_param_ex03.jsp">
	<jsp:param name="nick" value="멍멍이"/>
</jsp:forward>