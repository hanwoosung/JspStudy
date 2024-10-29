<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        h1 {
            color: red;
        }
    </style>
    <title>안뇽하세용? 김상준 타이틀입니당!</title>
</head>
<body>
<h1> 안녕하세용 김상준상준입닞당?</h1>
<a href="test1/first.jsp"> frist 페이지로 가기</a>
<a href="test1/second.jsp"> second 페이지로 가기</a>
<a href="test1/third.jsp"> third 페이지로 가기</a>

<form action="/Life" method="post">
    <input type="text" name="username" placeholder="Input Username....">
    <input type="radio" name="gender" value="Man">남성
    <input type="radio" name="gender" value="Woman">여성<br>
    <input type="checkbox" name="hobbies" value="독서">독서
    <input type="checkbox" name="hobbies" value="축구">축구
    <input type="checkbox" name="hobbies" value="등산">등산
    <input type="checkbox" name="hobbies" value="코딩">코딩 <br>
    <select name="jobs" multiple>
        <option value="">직업을 선택해 주세요</option>
        <option value="noJob">백수</option>
        <option value="student">학생</option>
        <option value="army">군인</option>
        <option value="employee">회사원</option>
    </select><br>

    <input type="submit" value="딸깍">
</form>

<%
    String name = "scriptlet(스크립틀릿)";
    String name2 = "expression tag(표현식 태그)";
%>
<p>이름 : <%= name %>
</p>
<p>이름2 : <%= name2 %>
</p>

</body>
<script>
    const h1 = document.querySelector('h1');
    h1.addEventListener('click', () => {
        alert('ㅎㅇㅎㅇ')
    })
</script>
</html>
