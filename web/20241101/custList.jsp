<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="D20241101.dao.CustmerDaoImpl" %>
<%@ page import="D20241101.dto.CustmerDto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-31
  Time: 오전 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <%
            CustmerDaoImpl D20241101.dao = new CustmerDaoImpl();
           List<CustmerDto> custList =  dao.getCustmerList();
        %>
        <title>Title</title>
        <link rel="stylesheet" href="/20241101/resources/main.css">

    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="main-container">
            <div class="main-box">
                <table border="1">
                    <thead>
                        <tr>
                            <th>회원번호</th>
                            <th>회원성명</th>
                            <th>연락처</th>
                            <th>주소</th>
                            <th>가입일자</th>
                            <th>고객등급</th>
                            <th>도시코드</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="item" items="<%=custList%>" varStatus="status">
                            <tr>
                                <td> <a href="modi.jsp?custno=${item.custno}"> ${item.custno}</a></td>
                                <td>${item.custname}</td>
                                <td>${item.phone}</td>
                                <td>${item.address}</td>
                                <td>${item.joinDate}</td>
                                <td>
                                    <c:choose>
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
                                <td>${item.city}</td>
                            </tr>

                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <jsp:include page="footer.jsp"/>
    </body>
</html>
