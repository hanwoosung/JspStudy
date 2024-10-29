<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-28
  Time: 오전 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    if (session.getAttribute("userId") != null) {
        response.sendRedirect("success.jsp");
    }
%>
<form action="/login" method="post">
    <input type="text" name="userId" placeholder="아이디입력">
    <input type="text" name="userPw" placeholder="패스워드 입력">
    <input type="text" name="age" placeholder="나이 입력">
    <input type="submit" value="전송">
</form>
</body>
</html>
