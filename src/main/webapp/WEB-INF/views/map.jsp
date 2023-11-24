<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=362a844ed77061a55b3f08c7802cb9db"></script>
<script type="text/javascript" src="./jQueryFolder/jquery-3.6.1.min.js"></script>
<link rel="stylesheet" href="./resources/css/map.css">
<link rel="shortcut icon" href="./resources/img/파피콘.ico" type="image/x-icon">
<link rel="icon" href="./resources/img/파피콘.ico" type="image/x-icon">
</head>
<body>

    <header>
        <div class="main-content">
            <ul> 
                <li class="main-res"><a href="reservationpage.do">예약</a></li> <!-- o -->
                <li class="main-ge"><a href="review.do">고객의 소리</a></li> <!-- o -->
                <a  class="main-logo" href="main.do"><img src="./resources/img/logo.svg"></a> <!-- o -->           
                <li class="main-resrist"><a href="reservationDetailpage.do">예약 내역</a></li> <!-- o -->
                <li class="main-login"><a href="logout.do">로그아웃</a></li> <!-- o -->
            </ul>
        </div>
    </header>

	<p class="top-text">예약 > 지역선택</p>
    <hr>

   
	<div id="map" style="width: 894px; height: 620px;"></div>


    <script>
	
	
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = { 
            center: new kakao.maps.LatLng(36.5642135 ,128.0016985), // 지도의 중심좌표
            level: 12 // 지도의 확대 레벨
        };
    
        var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
    
        // 마커를 표시할 위치입니다 
        var position1 =  new kakao.maps.LatLng(37.5139, 126.9003); // 서울
        var position2 =  new kakao.maps.LatLng(37.5139, 128.9003); // 강원도
        var position3 =  new kakao.maps.LatLng(35.5039, 129.0003); // 부산
        
        
        
    
        // 서울지역 마커 생성
        var marker1= new kakao.maps.Marker({
            position: position1,
            clickable: true // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정
            });
    
        // 아래 코드는 위의 마커를 생성하는 코드에서 clickable: true 와 같이
        // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
        // marker.setClickable(true);
        // 마커를 지도에 표시합니다.
        marker1.setMap(map);
        
        kakao.maps.event.addListener(marker1, 'click', function(){
            location.href="seoulHotelList.do"; <!-- o -->
        });
        // 마커를 클릭하면 seoul.do로 이동
        
        // --------------------------------------------------------------
        
        // 강원도지역 마커생성
        var marker2= new kakao.maps.Marker({
            position: position2,
            clickable: true 
            });
    
    
        marker2.setMap(map);
    
    
        kakao.maps.event.addListener(marker2, 'click', function(){
            location.href="gangwonHotelList.do"; <!-- o -->
        });
        // 마커를 클릭하면 gangwon.do로 이동
        
        // --------------------------------------------------------------
        
        // 부산지역 마커를 생성합니다
        var marker3= new kakao.maps.Marker({
            position: position3,
            clickable: true
            });
        
        marker3.setMap(map);
    
        kakao.maps.event.addListener(marker3, 'click', function(){
            location.href="busanHotelList.do"; <!-- o -->
        });
        // 마커를 클릭하면 busan.do로 이동
        
    </script>

	
    <footer></footer>

</body>

</html>