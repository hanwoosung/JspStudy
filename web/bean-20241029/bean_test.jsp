<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="member" class="pojo.Member" scope="request"/>
<jsp:setProperty name="member" property="id" value="aaa"/>
<jsp:setProperty name="member" property="pw" value="1234"/>
<jsp:setProperty name="member" property="name" value="황승현"/>

<%
    request.getRequestDispatcher("bean_result.jsp").forward(request, response);
%>

</body>
</html>
