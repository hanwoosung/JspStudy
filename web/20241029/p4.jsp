<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    String str = "안녕하세요.";

    int a = 5,b = -5;

    public int abs(int n) {
        if (n < 0) {
            n = -n;
        }
        return n;
    }
%>
<%
  Calendar date = Calendar.getInstance();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- html 주석 -->
<%-- jsp 주석 --%>

<%= str%> <br>
<%= a%> 의 절대값 : <%= abs(a)%><br>
<%= b%> 의 절대값 : <%= abs(b)%><br>


</body>
</html>
