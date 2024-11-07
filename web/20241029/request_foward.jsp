<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오전 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
request - forwarding 으로 열린 페이지
<br>
데이터 받아라 :<h1> ${param.test}</h1>
데이터 받아라 :<h1> <%= request.getParameter("D20241105.test")%></h1>
</body>
</html>
