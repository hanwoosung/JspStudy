<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>가위바위보</title>
        <link rel="stylesheet" href="../css/st.css">
    </head>
    <body>
        <div class="game-container">
            <h1>가위바위보</h1>
            <div class="play-area">
                <div class="player">
                    <h2>컴퓨터</h2>
                    <div class="choice-box">
                        <img id="com-choice" style="width: 100%; height: 100%" />
                    </div>
                </div>
                <div class="player">
                    <h2 style="color: blue">사람</h2>
                    <div class="choice-box">
                        <img id="user-choice" style="width: 100%; height: 100%" />
                    </div>
                </div>
            </div>

            <div class="choices">
                <button class="choice-btn" data-choice="가위" onclick="startGame('s')">가위</button>
                <button class="choice-btn" data-choice="바위" onclick="startGame('r')">바위</button>
                <button class="choice-btn" data-choice="보" onclick="startGame('p')">보</button>
            </div>
            <button type="button" onclick="exit()">종료하기</button>
            <div class="result">
                <p style="color: red">결과: <span id="result-text">게임 결과</span></p>
                <p style="color: green">승률: <span id="win-rate">0%</span></p>
            </div>

            <div class="statistics">
                <h3>통계</h3>
                <p style="color: red ; font-size: 20px">총 게임 수: <span id="total-games">0</span></p>
                <p>가위: <span id="scissors-count">0</span>번 (승률: <span id="scissors-rate">0%</span>)</p>
                <p>바위: <span id="rock-count">0</span>번 (승률: <span id="rock-rate">0%</span>)</p>
                <p>보: <span id="paper-count">0</span>번 (승률: <span id="paper-rate">0%</span>)</p>
            </div>

            <div class="statistics">
                <h3>점수 </h3>
                <%
                    String sessionId = (String) session.getAttribute("id");
                    System.out.println("aaaa" + sessionId);
                    String scoreStr = (String) application.getAttribute(sessionId);
                    System.out.println(scoreStr + "ccc");
                    int score = (scoreStr == null) ? 0 : Integer.parseInt(scoreStr);
                %>
                <p id="totalScore">${sessionScope.id}총 점수 : <%=score%>
                </p>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <script src="https://code.jquery.com/jquery-latest.min.js"></script>
        <script>

            const imgArr = [
                "http://localhost:8011/images/m.jpg",
                "http://localhost:8011/images/s.jpg",
                "http://localhost:8011/images/p.jpg"
            ];

            const userChoiceImg = document.getElementById("user-choice");
            const comChoiceImg = document.getElementById("com-choice");
            const resultText = document.getElementById("result-text");
            const winRateText = document.getElementById("win-rate");
            const totalGamesText = document.getElementById("total-games");
            const sCountText = document.getElementById("scissors-count");
            const rCountText = document.getElementById("rock-count");
            const pCountText = document.getElementById("paper-count");

            const sRateText = document.getElementById("scissors-rate");
            const rRateText = document.getElementById("rock-rate");
            const pRateText = document.getElementById("paper-rate");
            const totalScore = document.getElementById("totalScore");

            let totalGames = 0;
            let userWins = 0;
            let sCount = 0, rCount = 0, pCount = 0;
            let sWins = 0, rWins = 0, pWins = 0;
            let score =
            <%=score%>
            const sessionId = '<%=session.getId()%>';
            const sessionRealId = '${sessionScope.id}';


            const startGame = function (choice) {
                const choices = {r: 0, s: 1, p: 2};
                const userChoice = choices[choice];
                const comChoice = Math.floor(Math.random() * 3);

                userChoiceImg.src = imgArr[userChoice];
                comChoiceImg.src = imgArr[comChoice];

                const resultMatrix = [
                    [0, 1, 2],
                    [2, 0, 1],
                    [1, 2, 0]
                ];
                const result = resultMatrix[userChoice][comChoice];

                const winText = ['무승부', '패배', '승리'];
                resultText.textContent = winText[result];

                totalGames++;

                if (choice === 's') sCount++;
                if (choice === 'r') rCount++;
                if (choice === 'p') pCount++;

                if (result === 2) {
                    userWins++;
                    score += 5
                    document.getElementById('totalScore').innerHTML = sessionRealId + "의 총 점수 : " + score;
                    if (choice === 's') sWins++;
                    if (choice === 'r') rWins++;
                    if (choice === 'p') pWins++;
                }

                const winRate = ((userWins / totalGames) * 100).toFixed(2);
                winRateText.textContent = winRate + "%";
                totalGamesText.textContent = totalGames;

                const sRate = sCount > 0 ? ((sWins / sCount) * 100).toFixed(2) : "0.00";
                const rRate = rCount > 0 ? ((rWins / rCount) * 100).toFixed(2) : "0.00";
                const pRate = pCount > 0 ? ((pWins / pCount) * 100).toFixed(2) : "0.00";

                sCountText.textContent = sCount;
                rCountText.textContent = rCount;
                pCountText.textContent = pCount;
                sRateText.textContent = sRate + "%";
                rRateText.textContent = rRate + "%";
                pRateText.textContent = pRate + "%";
            };

            function exit() {
                let param = {
                    score: score,
                    id: sessionRealId
                }

                axios.post('/maxnum', param, {
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).then((response) => {
                    console.log(response);
                    console.log(response.data);
                    location.href = 'ajax-test.jsp'
                }).catch((error) => {
                    console.log(error);
                });
            }

        </script>


    </body>

</html>

