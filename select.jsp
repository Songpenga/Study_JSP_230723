<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">

/* $("#셀렉트박스ID option").index($("#셀렉트박스ID option:selected"));
 * select id를 받아서 저장하는 변수

 select에서 선택한 option을 저장하는 변수

 두개로 나누어 사용한다
 var 변수1 = document.getElementById("아이디명");
 var 변수2 = document.getElementById("아이디명").options.selectedIndex;
 */
	function search(){
		var tb = document.getElementById("city_select");
		var tbIndex = document.getElementById("city_select").options.selectedIndex;
		
		console.log("tb value : " + tb.options[tbIndex].value);
}
</script>
<body>
<input type="text" id="travle" id=""travle"">
<select id="city_select">
		<option name="city" value="seoul">서울</option>
		<option name="city" value="busan">부산</option>
		<option name="city" value="jeju">제주</option>
</select>

<input type="button" value="검색" onclick="search();">

</body>
</html>