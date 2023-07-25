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
	int year = 5;
	//몇 가지 경우를 동일하게 처리하려면 break 문 없는 case문만을 작성하고 다음에 나오는
	//case 문에 원하는 작업
		switch(year){
		case 1:
		case 2:
		case 3:
			out.print("저학년");
			break;
		case 4:
		case 5:
		case 6:
			out.print("고학년");
			break;
		}
	%>
	
</body>
</html>