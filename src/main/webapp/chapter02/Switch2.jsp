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
	int score = 96;
	char grade;
		switch(score/10){
		case 10: //case문에 break;를 쓰지 않는다면 아래의 case 구문까지 수행된다.
		case 9:
			grade ='A';
			out.println("학점은 : " + grade);
			break;
		case 8:
			grade ='B';
			out.println("학점은 : " + grade);
			break;
		case 7:
			grade ='C';
			out.println("학점은 : " + grade);
			break;
		case 6:
			grade ='D';
			out.println("학점은 : " + grade);
			break;
		default:
			grade ='F';
			out.println("학점은 : " + grade);
			break;
		}
	%>
	
	<%
		out.print("test");
	%>
</body>
</html>