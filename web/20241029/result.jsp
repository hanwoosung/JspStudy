<%@ page import="domain.Member" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Member Information</title>
</head>
<body>
<%
    ArrayList<Member> memberList = (ArrayList<Member>) request.getAttribute("member");
%>
<div>

    <%
        for (Member member : memberList) {

    %>
    <p>아이디: <%= member.getId() %>
    </p>
    <p>패스워드: <%= member.getPw() %>
    </p>
    <p>이름: <%= member.getName() %>
    </p>
  =====================================================

    <%
        }
    %>

</div>
</body>
</html>
