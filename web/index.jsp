<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
 Created by IntelliJ IDEA.
 User: GGG
 Date: 2024-10-31
 Time: 오전 9:32
 To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <link rel="stylesheet" href="/resources/main.css">
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="main-container">
            <div class="main-box2" style="text-align: center"><h2>쇼핑몰회원관리 시스템</h2></div>
            <span>쇼핑몰 회원정보와 회원매출정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다.</span><br>
            <span>프로그램 작성문서</span>
            <div >
                <p>1. 회원정보 테이블을 생성한다</p>
                <p>2. 매출정보 테이블을 생성한다</p>
                <p>3. 회원정보, 매출정보테이블에 제시된 문제지의 참조데이터를 추가 생성한다.</p>
                <p>4. 회원정보 입력 화면프로그램을 작성한다</p>
                <p>5. 회원정보 조회 프로그램을 작성한다.</p>
                <p>6. 회원매출정보 조회 프로그램을 작성한다.</p>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
