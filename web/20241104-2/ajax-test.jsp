<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-04
  Time: 오전 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <%session.invalidate(); %>
    </head>
    <body>
        아이디:<input type="text" name="id"><br>
        <button type="button" onclick="loadDoc()">ID 중복확인</button>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script>

        function loadDoc() {

            let param = {
                id: document.querySelector("input[name=id]").value
            }
            axios.post('/demo', param, {
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).then((response) => {
                console.log(response);
                console.log(response.data);
                if (response.data.trim() === '통과') {
                    location.href = "test.jsp";
                }else{
                    location.href = "test.jsp";
                }
            }).catch((error) => {
                console.log(error);
            });


        }
    </script>
</html>
