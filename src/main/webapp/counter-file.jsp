<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*" %>
 <jsp:useBean id="cnt" scope="application" class="counter.counter" />
 
 <%
 	int count=0;
	 session = request.getSession();
	 session.setMaxInactiveInterval(1);
	 String first=(String)session.getValue("checkfirst");
	 
	 String count_file = "C:/IT_Peng/Study_STS2305/Jsp_Study_2307/count.txt";
	 if(cnt.getcount() == 0){
		int j=0;
		String old = null;
		File infile = new File(count_file);
		try{
			if(infile.exists()){
				BufferedReader input = new BufferedReader(new FileReader(infile));
				if((old = input.readLine()) != null){
					int i = Integer.parseInt(old);
					for(j=0; j<i; j++){
						cnt.setcount();
					}
					input.close();
				}
			}
		}catch(IOException e){
			out.println(e.getMessage());
		}
	 }
	 
	 if(first != null){
		 count = cnt.getcount();
	 } else {
		 cnt.setcount();
		 count = cnt.getcount();
		 session.putValue("checkfirst", "first");	 
	 }
	 
	 if(count % 10 == 0){
		 try{
			 count_file = "C:/IT_Peng/Study_STS2305/Jsp_Study_2307/count.txt";
			 PrintWriter pw = new PrintWriter(new FileWriter(count_file));
			 pw.println(count);
			 pw.close();
		 }catch(IOException e){
			 out.println(e.getMessage());
		 }
	 }
 
 	out.println("현재까지 방문자 수 : " + count);
 %>