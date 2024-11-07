<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오후 2:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%
        session.setAttribute("test", request.getParameter("D20241105.test"));
    %>
</head>
<body>
    <c:redirect url="sess-page.jsp"/>
    2번 ${requestScope.msg}
</body>
</html>