<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-28
  Time: 오전 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("x","page입니다");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Main Page</h1>
<%@ include file="header.jsp"%>
<a href="sub.jsp">서브 페이지로 가기</a>
<%@ include file="footer.jsp" %>

</body>
</html>
