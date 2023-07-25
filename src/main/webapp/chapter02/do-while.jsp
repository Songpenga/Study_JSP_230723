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
	/*
		* do~while : while문과 마찬가지로 반복을 수행한다.
		while 문과의 차이점은 조건식의 판단이 나중에 이루어진다는 것으로 조건식의 결과와
		상관없이 무조건 한번은 반복문이 실행된다.
		
		※주의 : while문과 do~while 문 사용 시 조건식에서 사용되는 변수의 증감을 해주지 않으면
		무한 반복에 빠질 수 있으므로 주의해야 한다.
		
		for : 초기값, 조건식, 증감식을 한꺼번에 모두 지정할 수 있는 반복문
	*/	
		
	int i, sum;
	i = sum = 0;
	
	do{
		i++;
		sum = sum + i;
		
		out.print("반복횟수 : " + i + "지금까지 합" + sum + "<BR>");
	}while(i > 10); //조건식을 비교해서 참일 경우만 반복을 계속 수행한다.
	%>
	
</body>
</html>