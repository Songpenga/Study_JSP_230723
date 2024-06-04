<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>내장객체 - response </title>
</head>
<body>

<!-- 
		로그인화면 < -- > 로그인처리  -- > 화면
	    responseMain 	responseLogin	responseWelcome

 -->
<h2>1. 로그인 폼</h2>
<%
String id = request.getParameter("user_id"); 	// 1.request 내장 객체로 전송된 매개변수를 얻어옴
String pwd = request.getParameter("user_pwd");	// [1]
if(id.equalsIgnoreCase("must")&&pwd.equalsIgnoreCase("1234")){ // 2.회원인증 진행
	response.sendRedirect("ResponseWelcome.jsp"); // 3. 인증성공시 실행, sendRedirect() 메서드에 건넨 응답 페이지로 이동
}	   											  // location.href 와 같은 기능
else{
	request.getRequestDispatcher("ResponseMain.jsp?loginErr=1") // 4. 인증 실패시, request 내장 객체를 통해 로그인 페이지로 forward됨(전달)
	.forward(request, response);								// forward 는 페이지 이동과는 다르게 제어 흐름을 넘겨 주고자 할 떄 사용한다.
																// 여기서는 쿼리스트링으로 loginErr 매개변수를 전달하여 로그인 성공 여부를 알려주고 있다.
}
%>
</body>
</html>