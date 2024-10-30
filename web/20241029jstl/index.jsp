<%@ page import="pojo.Human" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오전 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <body>
        <jsp:include page="../fragments/header.jsp">
            <jsp:param name="title" value=" WELcome Page" />
        </jsp:include>

        <div>
            <p>반가워요 </p>
            <a href="../bean-20241029/p2.jsp"> p2 고고</a>
        </div>

        <a href="color-result.jsp?test=test">aaaa</a>

        <form action="p4.jsp">
            <input type="radio" name="fruit" value="사과"> 사과
            <input type="radio" name="fruit" value="오렌지"> 오렌지
            <input type="radio" name="fruit" value="마늘"> 마늘
            <input type="radio" name="fruit" value="토마토"> 토마토
            <input type="submit" value="딸각">
        </form>

        <form action="p5.jsp" method="get">
            좋아하는 영화를 선택하세요 (복수 선택 가능 ) <br>
            <input type="checkbox" name="movies" value="택시드라이버"> 택시드라이버
            <input type="checkbox" name="movies" value="시네마천국"> 시네마천국
            <input type="checkbox" name="movies" value="세상밖으로"> 세상밖으로
            <input type="checkbox" name="movies" value="혹성탈출"> 혹성탈출
            <input type="submit" value="딸각">
        </form>

        <jsp:include page="../fragments/footer.jsp">
            <jsp:param name="title" value="CopyLeft" />
        </jsp:include>
    </body>
</html>
