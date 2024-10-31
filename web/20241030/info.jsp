<%@ page import="D20241031.dao.MemberDao" %>
<%@ page import="D20241031.dto.Member" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>회원 정보</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../resources/info.css">
    </head>
    <body>
        <div class="info-container">
            <h2>회원 정보</h2>
            <%
                MemberDao D20241031.dao = new MemberDao();
                Member m = dao.getMember(Integer.parseInt(request.getParameter("mno")));
            %>
            <div class="info-item"><span>이름:</span> <%=m.getName()%></div>
            <div class="info-item"><span>전화번호:</span> <%=m.getPhone()%></div>
            <div class="info-item"><span>주소:</span> <%=m.getAddr()%></div>
            <div class="info-item"><span>생일:</span> <%=m.getBirth()%></div>
            <a href="suss.jsp" class="back-link">목록 페이지로 이동</a>
        </div>
    </body>
</html>