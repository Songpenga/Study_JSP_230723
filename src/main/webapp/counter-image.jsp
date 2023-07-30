<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*" %>
    <%@ page language="java" import="java.text.*" %>
    
 <jsp:useBean id="cnt" scope="application" class="counter.counter" />
 <%
 
	int count=0;
	 session = request.getSession();
	 session.setMaxInactiveInterval(1);
	 String first=(String)session.getValue("checkfirst");
	 
	 if(first != null){
		 count = cnt.getcount();
	 } else {
		 cnt.setcount();
		 count = cnt.getcount();
		 session.putValue("checkfirst", "first");	 
	 }

	out.println("현재까지 방문자 수 : " + count);
	
 	DecimalFormat formatc = new DecimalFormat("0000");
 	String scount = null;
 	String pos = null;
 	int p = 0;
 	scount = formatc.format(count);
 	for(p=0; p<4; p++){
 		pos=scount.substring(p, p+1);
 		
 	}
 	
 %>