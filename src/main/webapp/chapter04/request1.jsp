<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	[request 객체]
	<%="인코딩 방식 : " + request.getCharacterEncoding() + "<P>"%>
	<%="MiME 타입 : " + request.getContentType() + "<P>" %>
	<%="요청 정보 길이 : " + request.getContentLength() + "<P>" %>
	<%="헤더 이름 : " + request.getHeaderNames() + "<P>" %>
	<%="웹 전달 경로 : " + request.getPathInfo() + "<P>" %>
	<%="클라이언트 이름 : " + request.getRemoteHost() + "<P>" %>
	<%="클라이언트 IP 주소 : " + request.getRemoteAddr() + "<P>" %>
	<%="클라이언트 URL 경로: " + request.getRequestURL() + "<P>" %>
	<%="전송 방식 : " + request.getMethod() + "<P>" %>
	<%="서버 이름 : " + request.getServerName() + "<P>" %>
	<%="서버 포트 번호 : " + request.getServerPort() + "<P>" %>
	
	
</body>
</html>