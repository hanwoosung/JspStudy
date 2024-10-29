<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-28
  Time: 오전 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
  String msg = "Hello";
  public String f(){
      return msg;
  }
%>
<%
  String msg = "Bye";
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
  ${x }<br>
msg : <%= f()%>
</body>
</html>
