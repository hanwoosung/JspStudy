<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오후 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="member" class="D20241031.pojo.Member" scope="request"/>
<jsp:setProperty name="member" property="id" value="나는"/>
<jsp:setProperty name="member" property="pw" value="김상준"/>
<jsp:setProperty name="member" property="name" value="문어라네"/>

<jsp:forward page="p2-result.jsp">
  <jsp:param name="result" value="ok, good"/>
</jsp:forward>

</body>
</html>
