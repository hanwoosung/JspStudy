<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="D20241031.dao.MemberDao" %>
<%@ page import="D20241031.dto.Member" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    MemberDao D20241031.dao = new MemberDao();
    List<Member> memberList = dao.getMemberList();
%>
<!DOCTYPE html>
<html>
    <head>
        <title>회원 목록</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../resources/suss.css">
    </head>
    <body>
        <div class="table-container">
            <h2 style="text-align: center; margin-bottom: 25px;">회원 목록</h2>
            <table border="1">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>이름</th>
                        <th>전화번호</th>
                        <th>생일</th>
                        <th>주소</th>
                        <th colspan="2">관리</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="<%=memberList%>" varStatus="status">
                        <tr>
                            <td><a href="info.jsp?mno=${item.mno}" class="action-link">${item.mno}</a></td>
                            <td>${item.name}</td>
                            <td>${item.phone}</td>
                            <td>${item.birth}</td>
                            <td>${item.addr}</td>
                            <td><a href="delete.jsp?mno=${item.mno}" class="action-link">삭제</a></td>
                            <td><a href="modi.jsp?mno=${item.mno}" class="action-link">수정</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>