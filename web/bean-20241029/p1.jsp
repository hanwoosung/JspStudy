<%@ page import="java.beans.Encoder" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오전 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // request.setAttribute("test","테스트용");
    // response.sendRedirect("rep_result.jsp?test="+ URLEncoder.encode("부끄뎡", StandardCharsets.UTF_8);
    request.getRequestDispatcher("request_foward.jsp?test="+URLEncoder.encode("부끄뎡", StandardCharsets.UTF_8)).forward(request, response);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>



</body>
</html>
