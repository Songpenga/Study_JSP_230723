<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.io.*" %>

<%
	String board_file = "C:/IT_Peng/Study_STS2305/Jsp_Study_2307/write.txt";
	String email = null;
	File check = new File (board_file);
	
	
	if(!check.exists()){
		FileWriter filew = new FileWriter(board_file);
		
		filew.write("");
		filew.close();	
	}
	
	if(request.getParameter("email") != ""){
		email ="<A href=mailto:";
		email += request.getParameter("email");
		email += ">" +  request.getParameter("email");
		email += "</A>";
	}
	
	try{
		PrintWriter pw = new PrintWriter(new FileWriter(board_file, true));
		pw.print("테스트중입니다");
		pw.print(request.getParameter("subject"));
		pw.print("글쓴이 : "+request.getParameter("name"));
		pw.print("작성일 : " + (new java.util.Date()).toLocaleString());
		pw.print("내용 : " + request.getParameter("content"));
	}catch(IOException e){
		out.println(e.getMessage());
	}
	
%>
