<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>session 테스트</h3>
<%
	session = request.getSession();
	String[] a = session.getValueNames();
	out.println("세션Id : " + session.getId()+"<BR>");
	out.println("세션유지시간 : " + session.getMaxInactiveInterval()+"<BR>");
	if(a.length == 0){
		session.putValue(session.getId(), "A");
	} else {
		String what = (String)session.getValue(a[0]);
		out.println("이름 : "+a[0]+" 값 : " + what+"<BR>");
		session.putValue(session.getId(), what+"A");
	}	
%>
<A href = test.jsp>다시읽기</A>
</body>
</html>