<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>회원 등록</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="resources/index.css">
    </head>
    <body>
        <div class="form-container">
            <h2 class="form-title">회원 등록</h2>
            <form action="/join" method="post">
                <div class="form-group">
                    <label for="name"><i class="fas fa-user"></i> 이름</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="이름 입력" required>
                </div>
                <div class="form-group">
                    <label for="phone"><i class="fas fa-phone"></i> 전화번호</label>
                    <input type="text" class="form-control" id="phone" name="phone" placeholder="전화번호 입력" required>
                </div>
                <div class="form-group">
                    <label for="addr"><i class="fas fa-map-marker-alt"></i> 주소</label>
                    <input type="text" class="form-control" id="addr" name="addr" placeholder="주소 입력" required>
                </div>
                <div class="form-group">
                    <label for="brith"><i class="fas fa-birthday-cake"></i> 생일</label>
                    <input type="date" class="form-control" id="brith" name="brith" required>
                </div>
                <button type="submit" class="btn-submit">등록</button>
            </form>
            <a href="suss.jsp" class="back-link">목록 페이지로 이동</a>
        </div>
    </body>
</html>
