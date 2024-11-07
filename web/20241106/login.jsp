<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-06
  Time: 오전 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <link rel="stylesheet" href="../resources/popup.css">
    </head>

    <body>
        <h2>${sessionScope.id} 님 반갑습니다 </h2>
        <h1>로그인 만료까지 남은시간 <h1 style="color: red" id="time" /></h1>
        <div id="popup">
            <h2>로그인 시간 만료</h2>
            <div>
                로그아웃 하시겠습니까? 닫기를 누르면 시간 연장됩니다.
                <div class="button-container">
                    <button id="inactiveToday" onclick="sessionBye()">세션 빠잉</button>
                    <button id="closeBtn" onclick="sessionHi()">닫기</button>
                </div>
            </div>
        </div>
    </body>

    <script>
        $('#popup').hide();
        let count = 10;
        let interval;

        function startInterval() {
            interval = setInterval(() => {
                document.querySelector("#time").textContent = count;
                count--;

                if (count === -1) {
                    clearInterval(interval);
                    $('#popup').show();
                }
            }, 1000);
        }

        const sessionBye = () => {
            <% session.invalidate(); %>
            location.href = "..";
        }

        const sessionHi = () => {
            $('#popup').hide();
            count = 10;
            startInterval();
        }

        startInterval();
    </script>
</html>
