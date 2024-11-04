<%@ page import="org.mariadb.jdbc.client.column.JsonColumn" %>
<%@ page import="netscape.javascript.JSObject" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-04
  Time: 오후 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.setCharacterEncoding("utf-8");
    String chkVal = request.getParameter("inactiveToday");
    if (chkVal != null && chkVal.equals("1")) {
        Cookie cookie = new Cookie("PopupMode", "off");
        cookie.setPath(request.getContextPath());
        cookie.setMaxAge(60 * 60 * 24);
        response.addCookie(cookie);
        String postValue = "{\"value\" : \"허거덩\"}";
        out.print(postValue);
    }
%>