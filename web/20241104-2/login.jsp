<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-04
  Time: 오후 2:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>

        <%
            Cookie[] cookies = request.getCookies();
            for (Cookie c : cookies) {
                c.setMaxAge(0);
                response.addCookie(c);
            }
        %>

        <form method="post" action="/20241104-2/loginCookie.jspnCookie.jsp">
            <input name="id" type="text">
            <input name="pw" type="text">
            <input value="aa" type="submit">
        </form>

    </body>
</html>
