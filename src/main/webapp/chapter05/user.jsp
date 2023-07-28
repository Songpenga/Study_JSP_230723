<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<jsp:useBean id="info" scope="page" class="usercheck.user"/>
<jsp:setProperty name="info" property="name" />
<jsp:setProperty name="info" property="num" param="id" />

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <center>
      <table border="0" width="300">
        <form method="post">
          <tr>
            <th bgcolor="#996699" colspan="2">
              <font color="white" size="1">이름</font>
            </th>
            <td bgcolor="#99ccff" width="60%">
              <input
                type="text"
                name="name"
                value=<%=info.getName()%>
                size="10" />
            </td>
          </tr>
          <tr>
            <th>
              <th bgcolor="#996699" colspan="2">
              <font color="white" size="1">학번</font>
            </th>
            <td bgcolor="#99ccff">
              <input
                type="text"
                name="id"
                value=<%=info.getNum()%>
                size="10" />
            </td>
          </tr>
          <tr>
            <td colspan="2">
              <input type="submit" value="보내기" />
              <input type="submit" value="다시쓰기" />
            </td>
          </tr>
        </form>
      </table>
    </center>
    
    <jsp:include page="setget.jsp" /> 
  </body>
</html>

