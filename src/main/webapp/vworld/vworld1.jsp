<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VWorld 경로 탐색</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

    <h2>🚗 경로 탐색 결과</h2>
    <p><strong>출발지:</strong> 서울역</p>
    <p><strong>도착지:</strong> 부산역</p>
    <p id="distance">📏 거리: 계산 중...</p>
    <p id="time">⏳ 예상 시간: 계산 중...</p>

    <script>
        // VWorld API Key 입력
        const API_KEY = "F16C79F8-9B03-333A-A3D2-ECD64A53C1D5";  // 👉 여기에 본인의 VWorld API Key 입력

        // 출발지 (서울역) & 도착지 (부산역) 좌표 설정
        const startLon = 126.970833;
        const startLat = 37.554722;  // 서울역 (경도, 위도)
        const endLon = 129.041667;
        const endLat = 35.115111;      // 부산역 (경도, 위도)

        // AJAX 요청
        $.ajax({
            url: "https://api.vworld.kr/req/route",
            type: "post",
            dataType : "jsonp",
            jsonp : "callback",
            data: {
                service: "route",
                request: "getroute",
                format: "json",
                type: "car",  // 🚗 자동차 경로 (도보: "foot", 자전거: "bicycle")
                key: API_KEY,
                start: `${startLon},${startLat}`,
                end: `${endLon},${endLat}`
            },
            success: function(response) {
                console.log(response);  // 응답 데이터 콘솔 출력
                
                if (response.response.status === "OK") {
                    const result = response.response.result;
                    const distance = result.distance;  // 거리 (km)
                    const time = result.time;  // 소요 시간 (분)

                    // HTML에 결과 표시
                    $("#distance").html(`📏 거리: ${distance} km`);
                    $("#time").html(`⏳ 예상 시간: ${time} 분`);
                } else {
                    $("#distance").html("❌ 경로 탐색 실패");
                    $("#time").html("❌ 경로 탐색 실패");
                }
            },
            error: function(error) {
                console.error("API 요청 실패", error);
                $("#distance").html("❌ API 요청 오류");
                $("#time").html("❌ API 요청 오류");
            }
        });
    </script>

</body>
</html>