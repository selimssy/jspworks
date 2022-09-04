<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%  // session 방문자 작업
	int count_session = 0;

	if(session.getAttribute("visit_session") != null){
		count_session = (Integer)session.getAttribute("visit_session");
	}
	
	count_session++;
	
	session.setAttribute("visit_session", count_session);
	
	
	
	
	// application 작업
	int count_app = 0;

	if(application.getAttribute("visit_app") != null){
		count_app = (Integer)application.getAttribute("visit_app");
	}
	
	count_app++;
	
	application.setAttribute("visit_app", count_app);
%>