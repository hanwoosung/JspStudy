<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-24
  Time: 오후 2:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
    String name = request.getParameter("userName");
    int age = Integer.parseInt(request.getParameter("age"));
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>second.jsp</h1>
<p> 이름은: <%= name%>
</p>
<p>나이는: <%= age%>
</p>
</body>
</html>
