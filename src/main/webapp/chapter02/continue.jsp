<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		for(int i=0; i<=10; i++){
			/*
			i를 2로 나누었을때 나머지가 0이면, 즉 짝수면 continue문 이후 문장을
			수행하지 않고 다시 for문으로 옮긴다.
			*/
			if(i%2 == 0)
				continue;
			
			out.print("값 : " + i + "<br>");
		}
	%>
	
</body>
</html>