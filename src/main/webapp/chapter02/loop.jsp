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
		int i=0; //while 조건문에 true 값을 넣으면 무한 반복한다.
		while(true){
			i++;
			
			//무한 반복을 종료하기 위해 break 문을 이용한다.
			
		if(i>10) break;
			
			out.print(i + "번 반복합니다.");
		}
	%>
	
</body>
</html>