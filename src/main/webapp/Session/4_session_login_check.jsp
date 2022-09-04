<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nickname = request.getParameter("nickname");
	
	
	if(id.equals("abc1234") && pw.equals("1234")){   // 역시 테스트용으로 간단하게
		session.setAttribute("user_id", id);
		session.setAttribute("user_nick", nickname);	
		response.sendRedirect("5_session_welcome.jsp");
	}else{  %>
		
		<!-- html 내부에 <script> 태그 통해서 자바스크립트 사용!
			 자바스크립트 내장객체 history가 제공하는 back() 메서드 : 뒤로가기 기능 -->
		
		<script type="text/javascript">
			alert("로그인에 실패했습니다.");
			history.back();  // 뒤로가기
		</script>
		
<%	}	%>
	
