<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-06
  Time: 오전 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <form method="post">
            <input type="text" name="id">
            <input type="text" name="pw">
            <button onclick="reqList()">로그인</button>
        </form>
        ${sessionScope.id} seid
    </body>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>

        function reqList() {
            var param = {};
            param.id = document.querySelector("input[name=id]").value;
            param.pw = document.querySelector("input[name=pw]").value;

            $.ajax({
                url: "/login11",
                type: "POST",
                data: param,
                success: (data) => {
                    console.log(data);
                    if (data.trim() === '성공') location.href = "login.jsp";
                    else alert("실패")
                },
                error: (data) => {
                    alert("통신 실패" + data);
                }
            });
        }
    </script>
</html>
