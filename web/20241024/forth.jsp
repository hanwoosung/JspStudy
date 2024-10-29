<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-24
  Time: 오후 4:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
 int result = Integer.parseInt(request.getParameter("result"));
%>
<h1 style="color: red"><%= result %></h1>
<h1>서블릿 응답 페이지</h1>
</body>
</html>
