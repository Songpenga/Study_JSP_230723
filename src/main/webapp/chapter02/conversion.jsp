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
	//묵시적 형변환 
	int i = 'A'; //정수형 변수 i에 문자 'A'를 대입ㅎ면 정수 65로 자동 형변환 된다.	
	float f=10; // 실수형 변수 f에 정수 10을 대입하면 실수 10.0f로 자동 형 변환 된다.
	
	out.print("i의 값은 : " + i + "<BR>");
	out.print("f의 값은 : " + f + "<BR>");
	
	int ii;
	float pi = 3.14f;
	
	//실수형을 정수형으로 축소 변환 시 값의 손실이 일어난다.
	ii = (int)pi;
	
	out.print("float를 int로 강제 형 변환 : " + ii + "<BR>");
	
	//정수형을 실수형으로 확대 변환시 값의 손실이 나타나지 않는다.
	f = f + (float)ii;
	
	out.print("int형을 floar형으로 강제 형 변환 : " + f + "<BR>");
	%>
	

</body>
</html>