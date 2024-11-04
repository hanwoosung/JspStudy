<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.Cookie" %>
<html>
    <head>
        <title>Login Page</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            String pw = request.getParameter("pw");

            // 인증 확인 후 쿠키 발급
            if ("aa".equals(id) && "1234".equals(pw)) {
                Cookie cookie = new Cookie("id", id);
                cookie.setMaxAge(60 * 60 * 24);
                response.addCookie(cookie);
            }

            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if ("id".equals(cookie.getName()) && "aa".equals(cookie.getValue())) {
                        response.sendRedirect("result.jsp");
                        return;
                    }
                }
            }

            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    out.println(String.format("%s : %s <br>", cookie.getName(), cookie.getValue()));
                }
            }
        %>
    </body>
</html>
