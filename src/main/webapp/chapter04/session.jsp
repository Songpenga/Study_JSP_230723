<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <% 
    String userId = request.getParameter("id");
    String userPasswd = request.getParameter("passwd");
    
    String sessionId = session.getId();
    int sessionTime = session.getMaxInactiveInterval();
    
    out.print(userId + "님 환영합니다. <P>");
    out.print("생성된 세션 ID : " + sessionId + "<P>");
    out.print("세션 유지 시간 : " + sessionTime);
    
    %>