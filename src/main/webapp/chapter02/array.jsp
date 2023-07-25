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
		String[] name;
	%>
	
	<%
	//선언된 name 배열에 크기가 5인 배열 객체를 생성한다.
	name = new String[5];
	%>
	
	
	<%
	//배열의 선언, 객체 생성 그리고 초기화
	String[] season = new String[]{"봄", "여름", "가을", "겨울"};
	
	//배열의 객체를 생성한 후 인덱스를 이용하여 각 배열의 요소에 값을 대입
	String[] fruit = new String[3];
	fruit[0] = "바나나";
	
	//배열의 길이는  length 속성을 이용하여 구할 수 있다.
	out.print("배열 season의 길이는 : " +  season.length);
	%>
	
</body>
</html>