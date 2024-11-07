<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-04
  Time: 오후 3:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String popupMode = "on"; // 레이어 팝업창 띄울지 여부
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            String cookieName = c.getName();
            String cookieValue = c.getValue();
            if (cookieName.equals("PopupMode")) { // PopupClose 쿠키가 존재하면
                popupMode = cookieValue;  //popupMode 의 값 갱신
            }
        }
    }
%>
<html>
    <head>
        <title>Title</title>
        <style>
            div#popup {
                position: absolute;
                top: 100px;
                left: 50px;
                color: yellow;
                width: 270px;
                height: 100px;
                background-color: gray;
            }

            div#popup > div {
                position: relative;
                background-color: #ffffff;
                top: 0;
                border: 1px solid gray;
                padding: 10px;
                color: black;
            }
        </style>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script>
            $(function () {
                $('#closeBtn').click(function () {
                    $('#popup').hide();
                    var chkVal = $('input:checkbox[id=inactiveToday]:checked').val();

                    if (chkVal !== undefined) {
                        $.ajax({
                            url: 'popupCookie.jsp',
                            type: "GET", // 방식
                            data: {inactiveToday: chkVal},
                            dataType: "text",
                            success: function (resData) {
                                console.log(resData + 'aaa');
                                const object = JSON.parse(resData);
                                console.log(object.value);
                                // location.reload();
                            }
                        });
                    }
                })
            })


        </script>
    </head>
    <body>

        <h2>팝업 메인페이지</h2>
        <%
            for (int i = 1; i <= 10; i++) {
                out.print("현재 팝업창은 " + popupMode + "상태입니다.<br>");
            }
            if (popupMode.equals("on")) {
        %>
        <div id="popup">
            <h2 align="center">공지사항 팝업입니다.</h2>
            <div align="right">
                <form name="popFrm">
                    <input type="checkbox" id="inactiveToday" value="1" /> 하루동안 열지 않음
                    <input type="button" value="닫기" id="closeBtn" />
                </form>
            </div>
        </div>
        <%
            }
        %>

    </body>
</html>
