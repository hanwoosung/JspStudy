<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오후 4:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${param.fruit eq '사과'}">
                <p>사과를 골랐다</p>
            </c:when>
            <c:when test="${param.fruit eq '토마토'}">
                <p>토마토 골랐따</p>
            </c:when>
            <c:when test="${param.fruit eq '마늘'}">
                <p>마늘 골랐따</p>
            </c:when>
            <c:otherwise>
                <p>오렌지 골랐따</p>
            </c:otherwise>
        </c:choose>

    </body>
</html>
