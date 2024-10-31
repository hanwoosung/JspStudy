<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <html>
            <head>
                <title>Title</title>
            </head>
            <body>
                <form action="/modi"  method="post">
                    <input type="text" name="name" placeholder="이름입력">
                    <input type="text" name="phone" placeholder="폰 번호 입력">
                    <input type="text" name="addr" placeholder="주소 입력">
                    <input type="date" name="brith" placeholder="생일 입력">
                    <input type="hidden" name="mno" value="${param.mno}">
                    <input type="submit" value="등록">
                </form>

            </body>
        </html>
    </body>
</html>
