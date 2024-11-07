<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-04
  Time: 오후 2:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <h2>쿠키 값 확인하기(쿠키 생성된 이후의 페이지)</h2>
        <%
            Cookie[] cookies = request.getCookies(); //요청헤더의 모든 쿠키 얻어내기
            for (Cookie c : cookies) {
                String cookieName = c.getName();
                String cookieValue = c.getValue();

                out.println(String.format("%s : %s <br>", cookieName, cookieValue));
            }
        %>
    </body>
</html>
