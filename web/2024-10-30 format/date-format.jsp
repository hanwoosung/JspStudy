<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <c:set var="now" value="<%=new java.util.Date()%>" />
        현재 시각 : ${now}<br>
        <fmt:formatDate value="${now}" /><br>
        <fmt:formatDate value="${now}" type="date" /><br>
        <fmt:formatDate value="${now}" type="time" /><br>
        <fmt:formatDate value="${now}" type="both" /><br>
        <hr>
        default : <fmt:formatDate value="${now}" type="both" dateStyle="default" timeStyle="default" /> <BR>
        short : <fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short" /> <Br>
        medium : <fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium" /> <br>
        long : <fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long" /> <br>
        full : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /> <br>
        <hr>
        parttern = ("yyyy년 MM월 dd일 hh시 mm분 ss초"):
        <b><fmt:formatDate value="${now}" pattern="yyyy 년 MM월 dd일 hh시 mm분 ss초"/></b> <br>

    </body>
</html>
