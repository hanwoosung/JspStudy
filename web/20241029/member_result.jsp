<%@ page import="D20241031.pojo.Human" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오전 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <% Human member = (Human) request.getAttribute("member");%>
    아이디 : <%=member.getId()%><br>
    비번 : <%=member.getPw()%><br>
    이름 :<%=member.getName()%><br>

</body>
</html>
