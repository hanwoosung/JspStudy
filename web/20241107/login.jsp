<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <title>Login Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }

            .login-container {
                width: 300px;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 10px;
                box-shadow: 0px 0px 10px 0px #ccc;
            }

            .input-group {
                margin: 10px 0;
            }

            .input-group label {
                display: block;
                font-weight: bold;
            }

            .input-group input {
                width: 100%;
                padding: 8px;
            }

            .login-button {
                width: 100%;
                padding: 10px;
                background-color: #007bff;
                border: none;
                color: white;
                font-weight: bold;
                cursor: pointer;
                border-radius: 5px;
            }
        </style>
    </head>
    <body>
        <div class="login-container">
            <h2 style="text-align: center">로그인</h2>
            <form action="login.jsp" method="post">
                <div class="input-group">
                    <label for="username">아이디입력</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="input-group">
                    <label for="password">패스워드입력</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <button type="submit" class="login-button">Login</button>
            </form>
        </div>
    </body>
</html>
