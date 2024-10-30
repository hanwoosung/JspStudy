<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오후 2:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("color", "red");
    pageContext.setAttribute("msg", "나는 진구야");
%>
<html>
<head>
    <title>Title</title>
    <style>
        h1 {
            color: ${color};
        }
    </style>
</head>
<body>


<h1>안뇽안뇽</h1>

<form action="color-test.jsp" method="post">
    <select name="selectColor">
        <option value="red">red</option>
        <option value="blue">blue</option>
        <option value="green">green</option>
    </select>
    <input type="submit" value="딸각">
</form>

<button onclick="f()">딸각</button>

<script>
    function f() {
        alert("${msg}");
    }
</script>
</body>
</html>
