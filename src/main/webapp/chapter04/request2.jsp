<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <% 
    	String FormData = request.getParameter("data");
    
    out.print("웹 브라우저에서 받은 데이터 : " + FormData);
    %>