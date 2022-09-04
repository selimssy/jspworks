<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    

<%
	// 사용자가 입력한 인증번호
	String code = request.getParameter("code");

	// 랜덤으로 생성된 인증번호값
	String auth_code = (String)session.getAttribute("auth_code");
	
	if(code.equals(auth_code)){
		session.setAttribute("auth_pass", true);
		response.sendRedirect("7_concert_reserve.jsp");
	}else{  %>
		
		<script type="text/javascript">
			alert("인증번호가 일치하지 않습니다. 다시 인증해주세요.");
			history.back();
		</script>
		
<%	}  %>
