<%-- Created by IntelliJ IDEA. User: GGG Date: 2024-11-05 Time: 오전 9:58 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <style>
            body {
                font-family: Arial, sans-serif;
                display: flex;
                flex-direction: column;
                align-items: center;
                margin: 0;
                padding: 20px;
                background-color: #f4f4f9;
                color: #333;
            }
            .container {
                width: 80%;
                max-width: 1200px;
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 20px;
                text-align: center;
            }
            .image-gallery {
                display: flex;
                justify-content: center;
                gap: 20px;
                flex-wrap: wrap;
            }
            .image-gallery img {
                width: 300px;
                height: 300px;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                transition: transform 0.3s;
            }
            .image-gallery img:hover {
                transform: scale(1.05);
            }
            .content-box {
                background-color: #ffffff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                width: 100%;
                max-width: 800px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>이쁘게 변해라 얍</h1>
            <div class="image-gallery">
                <img id="url1" alt="Image 1"/>
                <img id="url2" alt="Image 2"/>
                <img id="url3" alt="Image 3"/>
            </div>
            <h2>내용</h2>
            <div id="content" class="content-box"></div>
        </div>
        <%
            String url1 = request.getParameter("url1");
            String url2 = request.getParameter("url2");
            String url3 = request.getParameter("url3");
            String content = request.getParameter("content");

        %>
        <script>
            document.querySelector("#url1").src = '<%=url1%>';
            document.querySelector("#url2").src = '<%=url2%>';
            document.querySelector("#url3").src = '<%=url3%>';
            document.querySelector("#content").textContent = '<%=content%>';
        </script>
    </body>
</html>
