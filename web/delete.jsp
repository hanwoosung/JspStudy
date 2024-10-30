<%@ page import="dao.MemberDao" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-30
  Time: 오전 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <%
            MemberDao dao = new MemberDao();
            dao.deleteMember(Integer.parseInt(request.getParameter("mno")));
            response.sendRedirect("suss.jsp");
        %>
    </body>
</html>
