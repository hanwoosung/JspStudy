<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-04
  Time: 오후 2:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <h1> 쿠키 (Cookie) 설정</h1>
        <%
            Cookie cookie = new Cookie("myCookie", "쿠키_맛나용?"); //쿠키생성 space바 들어가면안된다잉
            cookie.setPath(request.getContextPath()); //쿠키 적용 경로 설정
            cookie.setMaxAge(60 * 60);  // 유지기간 : 초단위
            response.addCookie(cookie); //쿠키 발급

        %>

        <h2>2, 쿠키 설정 직후 쿠키값 확인하기</h2>
        <%
            Cookie[] cookies = request.getCookies(); //요청헤더의 모든 쿠키 얻어내기
            for (Cookie c : cookies) {
                String cookieName = c.getName();
                String cookieValue = c.getValue();

                out.println(String.format("%s : %s <br>", cookieName, cookieValue));
            }
        %>

        <h3>3. 페이지 이동 후 쿠키값 확인하기</h3>
        <a href="cookieResult.jsp">다음 페이지에서 쿠키값 확인하기</a>

    </body>
</html>
