<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="dao.OrderDaoImpl" %>
<%@ page import="dto.OrderListDto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.format.DateTimeFormatter" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-01
  Time: 오전 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <%
            OrderDaoImpl dao = new OrderDaoImpl();
            List<OrderListDto> orderList = dao.orderList();
        %>
        <link rel="stylesheet" href="../resources/table.css">
    </head>
    <body>
        <%@include file="../20241104-2/header.jsp" %>
        <div class="main-container">
            <table border="1" style="margin: 0 auto">
                <thead>
                    <tr>
                        <th>할인점코드</th>
                        <th>점포명</th>
                        <th>주문번호</th>
                        <th>주문일자</th>
                        <th>제품코드</th>
                        <th>제품명</th>
                        <th>주문수량</th>
                        <th>단가</th>
                        <th>소비자가</th>
                        <th>할인가격</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="<%=orderList%>" var="item">
                        <tr>
                            <td>${item.shopNo}</td>
                            <td>${item.shopName}</td>
                            <td>${item.orderNo.substring(0, 4)}-${item.orderNo.substring(4)}</td>
                            <td>${item.orderDate.substring(0, 4)}-${item.orderDate.substring(4, 6)}-${item.orderDate.substring(6)}</td>
                            <td>${item.PCode}</td>
                            <td>${item.PName}</td>
                            <td>${item.amount}</td>
                            <td><fmt:formatNumber value="${item.cost}" /></td>
                            <td><fmt:formatNumber value="${item.consumerPrice}" /></td>
                            <td><fmt:formatNumber value="${item.discountPrice}" /></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <%@include file="../20241104-2/footer.jsp" %>
    </body>
</html>
