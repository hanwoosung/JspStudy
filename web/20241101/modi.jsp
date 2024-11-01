<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="D20241101.dao.CustmerDaoImpl" %>
<%@ page import="D20241101.dto.CustmerDto" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-31
  Time: 오전 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <%
            CustmerDaoImpl D20241101.dao = new CustmerDaoImpl();
            CustmerDto custmer = dao.getCustmer(Integer.parseInt(request.getParameter("custno")));
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyyMMdd");
        %>
        <link rel="stylesheet" href="/20241101/resources/main.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

        <style>
            .main-box2 {
                height: 80%;
                width: 80%;
            }

            input {
                width: 100%;
                height: 10%;
            }

            .row-box {
                display: flex;
                width: 100%;
                height: 10%;
            }

            .row-box input {
                height: 100%;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="main-container">
            <div class="main-box">
                <div class="main-box2">
                    <form name="registerForm" action="/modi2" method="post" onsubmit="return validateForm()">

                        <input type="text" name="custno" placeholder="회원번호" readonly value="<%=custmer.getCustno()%>" /><br>
                        <input type="text" name="custname" placeholder="회원성명" maxlength="20"
                               value="<%=custmer.getCustname()%>"><br>
                        <input type="text" name="phone" placeholder="회원전화" maxlength="13"
                               value="<%=custmer.getPhone()%>"> <br>
                        <input type="text" name="address" placeholder="주소" maxlength="60"
                               value="<%=custmer.getAddress()%>"><br>
                        <input type="text" name="joindate" placeholder="가입일자" maxlength="60"
                               value="<%=dtf.format(custmer.getJoinDate())%>" readonly><br>
                        <input type="text" name="grade" placeholder="고객등급" maxlength="1"
                               value="<%=custmer.getGrade()%>"><br>
                        <input type="text" name="city" placeholder="거주도시" maxlength="2"
                               value="<%=custmer.getCity()%>"><br>
                        <div class="row-box"><input type="button" onclick=" reqList()" value="수정">
                            <input type="button" onclick=location.href="/custList.jsp" value="조회">
                    </form>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
    <script src="resources/validateForm.js"></script>
    <script>
        function reqList() {
            var param = {};
            param.custno = document.querySelector("input[name=custno]").value;
            param.custname = document.querySelector("input[name=custname]").value;
            param.phone = document.querySelector("input[name=phone]").value;
            param.address = document.querySelector("input[name=address]").value;
            param.joindate = document.querySelector("input[name=joindate]").value;
            param.grade = document.querySelector("input[name=grade]").value;
            param.city = document.querySelector("input[name=city]").value;

            $.ajax({
                url: "/modi2",
                type: "POST",
                data: param,
                success: (data) => {
                    const check = data.trim();
                    if (check === 'SUCCESS') {
                        alert("성공");
                        location.href = "custList.jsp";
                    } else if (check === 'DUPLICATE_PHONE') {
                        alert("전화번호 중복입니다.");
                    } else if (check === 'FAILURE') {
                        alert("실패");
                    } else {
                        alert("알 수 없는 응답입니다.");
                    }
                },
                error: (data) => {
                    alert("실패" + data);
                    console.log('error' + data);
                }
            })

        }
    </Script>
    </script>
</html>
