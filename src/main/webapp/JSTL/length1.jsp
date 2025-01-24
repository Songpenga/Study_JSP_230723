

//#fn:length(Object item) 사용법
//-fn:length() 반환타입 int
//-item이 배열이나 컬렉션이면 요소의 개수를, 문자열이면 문자의 개수를 반환 한다.

<c:choose>
    <c:when test="${fn:length(resultList) > 0}">

        <c:set var="items" value="${fn:split('Hello Java', ' ')}"/>

        ${fn:length(items)}//2

        ${fn:length(123)}//3
        
        ${fn:length(안녕하세요)} //5

    </c:choose>
</c:when>