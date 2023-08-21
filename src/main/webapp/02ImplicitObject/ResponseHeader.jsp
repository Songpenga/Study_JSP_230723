<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Collection" %>

<%
//응답 헤더에 추가할 값 준비
SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
long add_date = s.parse(request.getParameter("add_date")).getTime();
int add_int = Integer.parseInt(request.getParameter("add_int"));
String add_str = request.getParameter("add_str");

//응답 헤더에 값 추가
response.addDateHeader("myBirthday", add_date);
response.addDateHeader("myNumber", add_int);
response.addDateHeader("myNumber", 1004);
response.addHeader("myNumber", add_str);
response.setHeader("myNumber", "안중근");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - response</title>
</head>
<body>
<h2>응답 헤더 정보 출력하기</h2>

<%
//Collection<String> header
%>

</body>
</html>