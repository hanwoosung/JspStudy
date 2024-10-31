<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="dao.CustmerDaoImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <%
            LocalDateTime now = LocalDateTime.now();
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyyMMdd");
            String sDate = now.format(dtf);
            CustmerDaoImpl dao = new CustmerDaoImpl();
        %>
        <link rel="stylesheet" href="/resources/main.css">
        <script src="resources/validateForm.js"></script>
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
                    <form name="registerForm" action="/join2" method="post" onsubmit="return validateForm()">
                        <input type="text" name="custno" placeholder="회원번호" readonly
                               value="<%=dao.getLastCustNo() + 1%>"><br>
                        <input type="text" name="custname" placeholder="회원성명" maxlength="20"><br>
                        <input type="text" name="phone" placeholder="회원전화" maxlength="13"><br>
                        <input type="text" name="address" placeholder="주소" maxlength="60"><br>
                        <input type="text" name="joindate" placeholder="가입일자" value="<%=sDate%>" readonly><br>
                        <input type="text" name="grade" placeholder="고객등급 (A/B/C)" maxlength="1"><br>
                        <input type="text" name="city" placeholder="거주도시" maxlength="2"><br>
                        <div class="row-box">
                            <input type="button" onclick="reqList()" value="등록">
                            <input type="button" onclick=location.href="/custList.jsp" value="조회"></input>
                    </form>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
        가능합니다.
    </body>
    <Script>
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
                url: "/join2",
                type: "POST",
                data: param,
                success: function (data) {
                    console.log(data);
                    const trimmedData = data.trim();

                    if (trimmedData === 'SUCCESS') {
                        alert("성공");
                        location.href = "custList.jsp";
                    } else if (trimmedData === 'DUPLICATE_PHONE') alert("전화번호 중복입니다.");
                    else if (trimmedData === 'FAILURE') alert("실패");
                    else alert("알 수 없는 응답입니다.");

                },
                error: function (data) {
                    console.log('error' + data);
                    alert("통신 실패");
                }
            });
        }

    </Script>
</html>
