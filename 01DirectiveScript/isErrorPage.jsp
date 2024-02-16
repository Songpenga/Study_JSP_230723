<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage = "true" 
    %>
    <!-- 
    isErrorPage 속성에 대한 true 를 지정
    에레 페이지에서는 반드시 isErrorPage 속성을 true로 설정해줘야 한다.
    그래야만 발생된 에러 내용을 그대로 넘겨받을수 있습니다.     
     -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - error/isErrorPage 속성</title>
</head>
<body>
	<h2>서비스 중 일시적인 오류가 발생하였습니다</h2>
	<p>
		오류명 : <%= exception.getClass().getName() %> <br />
		오류 메시지 : <%= exception.getMessage() %> 
	</p>
</body>
</html>