<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="dao.OrderDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="dto.ShopOrderListDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <%
            OrderDaoImpl dao = new OrderDaoImpl();
            List<ShopOrderListDto> orderList = dao.shopOrderList();
        %>
        <link rel="stylesheet" href="../resources/table.css">
    </head>
    <body>
        <%@include file="../20241104-2/header.jsp" %>
        <div class="main-container">
            <table border="1" style="margin: 0 auto;">
                <thead>
                    <tr>
                        <th>할인점코드</th>
                        <th>제품코드</th>
                        <th>제품명</th>
                        <th>주문수량</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="<%=orderList%>" var="item">
                        <tr>
                            <td>${item.shopNo}</td>
                            <td>${item.PCode}</td>
                            <td>${item.PName}</td>
                            <td>${item.amount}</td>
                        </tr>

                    </c:forEach>
                </tbody>
            </table>
        </div>
        <%@include file="../20241104-2/footer.jsp" %>
    </body>
</html>
