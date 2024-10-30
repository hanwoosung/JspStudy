<%@ page import="pojo.Member" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-28
  Time: 오후 3:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  Member member = new Member("아이디", "패스워드", "이름");
  pageContext.setAttribute("m",member);
%>

<h1>회원정보</h1>
아이디 : ${m.id}<br>
패스워드 : ${m.pw}<br>
이름 : ${m.name}<br>

</body>
</html>
