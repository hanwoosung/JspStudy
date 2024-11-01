<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="D20241101.dao.CustmerDaoImpl" %>
<%@ page import="D20241101.dto.CustmerSalesDto" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <%
        CustmerDaoImpl D20241101.dao = new CustmerDaoImpl();
        List<CustmerSalesDto> salseList = dao.getCustmerSales();
    %>
    <head>
        <link rel="stylesheet" href="/20241101/resources/main.css">

        <title>Title</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />

        <div class="main-container">
            <div class="main-box">
                <table border="1">
                    <thead>
                        <tr>
                            <th>회원번호</th>
                            <th>회원성명</th>
                            <th>고객등급</th>
                            <th>매출</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="item" items="<%=salseList%>" varStatus="status">
                            <tr>
                                <td>${item.custno}</td>
                                <td>${item.custname}</td>
                                <td><c:choose>
                                    <c:when test="${item.grade.toString() == 'A'}">
                                        VIP
                                    </c:when>
                                    <c:when test="${item.grade.toString() == 'B'}">
                                        일반
                                    </c:when>
                                    <c:otherwise>
                                        직원
                                    </c:otherwise>
                                </c:choose>
                                </td>
                                <td><fmt:formatNumber value="${item.sales}" /></td>
                            </tr>

                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
