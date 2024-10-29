<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-25
  Time: 오전 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name = request.getParameter("username");
    String gender = request.getParameter("gender");
    String[] hobbies = request.getParameterValues("hobbies");
    String[] jobs = request.getParameterValues("jobs");
%>

<h1> 이름은 두둥탁  <%=name %></h1>
<h1> 성별은 두둥탁  <%=gender %></h1>

<% for (int i = 0; i < hobbies.length; i++)  {%>
<p>취믄 두둥탁탁 <%=hobbies[i] %></p>
<% } %>

<% for (int j = 0; j < jobs.length; j++) { %>
<p> 두둥탁 직업 <%=jobs[j]%></p>
<% } %>

</body>
</html>
