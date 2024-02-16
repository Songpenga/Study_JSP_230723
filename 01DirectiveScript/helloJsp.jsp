<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>    
    
<%! // ! = 스크립트 요소(선언부) / @ = 지시어
String str1 = "jsp";
String str2 = "안녕하세오...";
 %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>처음 만들어보는 <%= str1 %></h2>

<p>
	<%
		out.println(str2 + str1 + "홧팅!!");
	%>
</p>
</body>
</html>