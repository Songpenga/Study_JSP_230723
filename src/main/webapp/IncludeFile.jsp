<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDate"%>
<%@ page import="java.time.LocalDateTime"%>

<%
LocalDate today = LocalDate.now(); //오늘날짜
LocalDateTime tommorrow = LocalDateTime.now().plusDays(1); // 내일날짜

%>
