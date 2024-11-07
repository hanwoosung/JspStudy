<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오후 3:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <h1>JSTL - 조건문 처리</h1>
        <hr>

        <%--   <c:set var="x" value="10"/>
           <c:if D20241031.D20241105.test="${x  == 10}">
               <p>x 에 저장된 값은 10입니다.</p>
           </c:if>
           <c:redirect url="sess-page.jsp" />--%>

        <%--
                <c:if D20241031.D20241105.test="${param.id == 'hgd' && param.pw == '1234'}">
                    <c:set var="id" value="${param.id}" scope="session" />
                    <c:redirect url="suss.jsp" />
                </c:if>

                <c:redirect url="fail.jsp" />--%>

        <c:choose>
            <c:when test="${param.id eq 'hgd' && param.pw == '1234'}">
                <c:set var="id" value="${param.id}" scope="session" />
                <c:redirect url="suss.jsp" />
            </c:when>
            <c:otherwise>
                <c:redirect url="fail.jsp" />
            </c:otherwise>
        </c:choose>

    </body>
</html>
