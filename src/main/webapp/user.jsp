<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="info" scope="page" class="user" />
<jsp:setProperty name="info" property="name" />
<jsp:setProperty name="info" property="num" property="id" />

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
            <td></td>
          </tr>
        </form>
      </table>
    </center>
  </body>
</html>
