<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-01
  Time: 오전 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <title>Title</title>
        <link rel="stylesheet" href="../resources/regist.css">
    </head>
    <body>
        <%@include file="../20241104-2/header.jsp" %>
        <div class="main-container">
            <h1>주문등록</h1>
            <div class="form-container">
                <form action="/order" id="registerForm" method="post" onsubmit="return validateForm()">
                    <table class="form-table">
                        <tr>
                            <td>주문번호</td>
                            <td><input type="text" name="orderNo" minlength="8" maxlength="8"></td>
                        </tr>
                        <tr>
                            <td>주문점포</td>
                            <td>
                                <select name="shopNo">
                                    <option value="">점포선택</option>
                                    <option value="S001">AA 할인점</option>
                                    <option value="S002">BB 할인점</option>
                                    <option value="S003">CC 할인점</option>
                                    <option value="S004">DD 할인점</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>주문일자</td>
                            <td>
                                <input type="text" maxlength="8" name="orderDate" placeholder="20241012형식"> </input>
                            </td>
                        </tr>
                        <tr>
                            <td>제품코드</td>
                            <td>
                                <select name="pCode">
                                    <option value="">코드선택</option>
                                    <option value="AA01">삼각김밥</option>
                                    <option value="AA02">도시락</option>
                                    <option value="AA03">봉지만두</option>
                                    <option value="AA04">컵라면</option>
                                    <option value="AA05">아메리카노</option>
                                    <option value="AA05">콜라</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>주문수량</td>
                            <td><input type="number" min="0" name="amount"></td>
                        </tr>
                    </table>
                    <div class="button-container">
                        <button type="button" onclick="if(validateForm()) reqList();">주문등록</button>
                        <button type="reset">다시쓰기</button>
                    </div>
                </form>
            </div>
        </div>
        <%@include file="../20241104-2/footer.jsp" %>
    </body>
    <script src="../resources/regist.js"></script>
</html>
