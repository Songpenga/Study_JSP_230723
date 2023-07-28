
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<jsp:useBean id="info" scope="page" class="usercheck.user" />


현재 값 : 
<jsp:getProperty name="info" property="num" />
<jsp:getProperty name="info" property="name" />

<br>
Form으로부터 설정 된 값 : 
<jsp:setProperty name="info" property="num" param="id"/>
<jsp:setProperty name="info" property="name" />
<jsp:getProperty name="info" property="num" />
<jsp:getProperty name="info" property="name" />

<br>
직접 설정한 값:
<jsp:setProperty name="info" property="num" value="0619"/>
<jsp:setProperty name="info" property="name" value="모차르트"/>
<jsp:getProperty name="info" property="num" />
<jsp:getProperty name="info" property="name" />
