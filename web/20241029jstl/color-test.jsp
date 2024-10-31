<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Title</title>
        <style>
            body {
                background-color: ${param.selectColor}
            }
        </style>
    </head>
    <body>
        <H1>ㅎㅇㅎㅇ</H1>
        <p> JSTL core-set 사용</p>

        <c:set var="msg" value="${'good luck'}" scope="page" />
        msg : ${msg}<br>

        <c:set var="age">${10}</c:set>
        age : ${age}<Br>

        <c:set var="member" value="<%= new D20241031.pojo.Member() %>" scope="session" />
        <c:set target="${member}" property="id" value="aaa" />
        <c:set target="${member}" property="pw" value="1234" />
        <c:set target="${member}" property="name" value="kim" />

        <h3>회원정보</h3>
        <ul>
            <li>아이디 : ${member.id}</li>
            <li>비밀번호 : ${member.pw}</li>
            <li>이름 : ${member.name}</li>
        </ul>





        <%--<jsp:forward page="color-result.jsp"/>--%>
    </body>
</html>
