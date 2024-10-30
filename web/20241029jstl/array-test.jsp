<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오후 5:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <%
            ArrayList<String> strList = new ArrayList<>();
            strList.add("aaa");
            strList.add("bba");
            strList.add("cca");
            pageContext.setAttribute("strList", strList);
        %>
        <ul>
            <c:forEach var="value" items="${pageScope.strList}" varStatus="status">
                <li>순서: ${status.count} 😊🤔(●'◡'●)(●'◡'●)🐱‍🐉😂  값 : ${value}</li>
            </c:forEach>
        </ul>
    </body>
</html>
