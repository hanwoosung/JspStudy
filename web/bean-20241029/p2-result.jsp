<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="member" class="pojo.Member" scope="request"/>
<jsp:setProperty name="member" property="*"/>

<h1 style="color: red">${param.result} </h1>

id : ${requestScope.member.id}<br>
pw : ${requestScope.member.pw}<br>
name : ${requestScope.member.name}

<h1>다른방법</h1>
id : <jsp:getProperty name="member" property="id"/><br>
pw : <jsp:getProperty name="member" property="pw"/><br>
name : <jsp:getProperty name="member" property="name"/>
</body>
</html>
