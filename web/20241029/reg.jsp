<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오전 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="member" class="D20241031.pojo.Member" scope="page"></jsp:useBean>
<jsp:setProperty name="member" property="*"  />
<h3>회원정보</h3>
아이디 : <jsp:getProperty name="member" property="id"/> <br>
패스워드 :  <jsp:getProperty name="member" property="pw"/><br>
이름 : <jsp:getProperty name="member" property="name"/> <br>

</body>
</html>
