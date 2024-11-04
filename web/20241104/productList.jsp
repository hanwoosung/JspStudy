<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="dao.OrderDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="dto.ProductListDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <%
            OrderDaoImpl dao = new OrderDaoImpl();
            List<ProductListDto> productList = dao.productList();
        %>
        <link rel="stylesheet" href="../resources/table.css">
    </head>
    <body>
        <%@include file="../header.jsp" %>
        <div class="main-container">
            <table border="1" style="margin: 0 auto;">
                <thead>
                    <tr>
                        <th>제품코드</th>
                        <th>제품명</th>
                        <th>단가</th>
                        <th>할인율(10%)</th>
                        <th>할인율(15%)</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="<%=productList%>" var="item">
                        <tr>
                            <td>${item.PCode}</td>
                            <td>${item.PName}</td>
                            <td>${item.cost}</td>
                            <td><fmt:formatNumber value="${fn:replace(item.discountTen, ',', '')}" type="number" maxFractionDigits="0" /></td>
                            <td><fmt:formatNumber value="${fn:replace(item.discountFifteen, ',', '')}" type="number" maxFractionDigits="0" /></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <%@include file="../footer.jsp" %>
    </body>
</html>
