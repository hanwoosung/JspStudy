<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>Kakao 지도 시작하기</title>
    </head>
    <body>
        <div id="map" style="width:500px;height:400px;"></div>
        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=54cb46c970aa95d07128fde73e13a11d"></script>
        <script>
            var container = document.getElementById('map');
            var options = {
                center: new kakao.maps.LatLng(33.450701, 126.570667),
                level: 3
            };

            var map = new kakao.maps.Map(container, options);
        </script>
    </body>
</html>