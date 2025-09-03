<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>오시는 길</title>
  <link rel="stylesheet" href="resources/css/map.css" />
  <link rel="stylesheet" href="resources/css/header.css" />
  <link rel="stylesheet" href="resources/css/footer.css" />
</head>
<body>
<%@ include file="header.jsp" %>

<section class="location-section">
  <div class="location-title">오시는 길</div>

  <div class="location-content">
    <!-- 회사 정보 -->
    <div class="location-info">
      <h3>주소</h3>
       서울특별시 용산구 청파로 132<br>

      <h3>연락처</h3>
      전화: 02-1234-5678<br>
      이메일: contact@example.com<br>

      <h3>대중교통</h3>
      - 1호선, 경의중앙선 용산역 3번출구 도보 3분 <br>
      - 버스: 간선 505, 지선 5012,0411 용산전자상가하차
    </div>

    <!-- 지도 영역 -->
    <div class="map-box">
      <div id="map"></div>
    </div>
  </div>
</section>

<%@ include file="footer.jsp" %>

<!-- 카카오 지도 스크립트 -->
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=405c476fc422e5237e94d0660523ce5f&libraries=services"></script>
<script>
  var container = document.getElementById('map');
  var options = {
    center: new kakao.maps.LatLng(37.53290109161785, 126.95947633875862),
    level: 3
  };

  var map = new kakao.maps.Map(container, options);
  var geocoder = new kakao.maps.services.Geocoder();
  var address = "서울특별시 용산구 청파로 132";

  geocoder.addressSearch(address, function(result, status) {
    if (status === kakao.maps.services.Status.OK) {
      var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
      map.setCenter(coords);

      var marker = new kakao.maps.Marker({
        map: map,
        position: coords
      });

      var infowindow = new kakao.maps.InfoWindow({
        content: '<div style="padding:5px;">' + address + '</div>'
      });
      infowindow.open(map, marker);
    } else {
      alert("주소 검색 실패: " + status);
    }
  });
</script>
</body>
</html>
