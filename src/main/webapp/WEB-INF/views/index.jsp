<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>어디가자</title>
    <link rel="stylesheet" href="./resources/css/main2.css">
<!--SWIPER CDN 링크-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
<link rel="shortcut icon" href="./resources/img/파피콘.ico" type="image/x-icon">
<link rel="icon" href="./resources/img/파피콘.ico" type="image/x-icon">

</head>
<body>
    <header>
        <div class="main-content">
            <ul> 
                <li class="main-res"><a href="loginpage.do">예약</a></li> <!-- o -->
                <li class="main-ge"><a href="loginpage.do">고객의 소리</a></li>  <!-- o -->
                <a class="main-logo" href="#"><img src="./resources/img/logo.svg"></a> <!-- o -->
                <li class="main-resrist"><a href="loginpage.do">예약 내역</a></li> <!-- o -->
                <li class="main-login"><a href="loginpage.do">로그인</a></li> <!-- o -->
            </ul>
        </div>
    </header>
 
    <section>
        <div class="mySwiper">
            <div class="swiper-wrapper">
         <!--1번 스와이퍼 시작-->
             <div class="swiper-slide">
                <div class="swiper-img">
                   <img src="./resources/img/hotel1.jpg" class="main-swiper-img">
                </div>
                <div class="swiper-content">
                   <div class="swiper-content-text">
                      <p class="swiper-tag">KAJA Hotel 만의 모던한 객실</p>
                      <p class="swiper-content-content">KAJA HOTEL의 객실은 모던하면서도 품격 있는</p>
                            <p class="swiper-content-content">라이프 스타일 공간으로고객님들께 집과 같이 보다 쾌적한 환경에서</p>
                            <p class="swiper-content-content">지내실 수 있는 객실을 제공합니다.</p>
                   </div>
                </div>
                </div>
                 <!--2번 스와이퍼 시작-->
             <div class="swiper-slide">
                <div class="swiper-img">
                   <img src="./resources/img/lobby.jpg" class="main-swiper-img">
                </div>
                <div class="swiper-content">
                   <div class="swiper-content-text">
                      <p class="swiper-tag">KAJA Hotel 만의 다양한 서비스</p>
                      <p class="swiper-content-content">KAJA HOTEL의 다양한 소셜 라이프(Social life)를</p>
                            <p class="swiper-content-content">즐길 수 있는 라운지가 았습니다</p>
                   </div>
                </div>
                </div>

                <!--3번 스와이퍼 시작-->
             <div class="swiper-slide">
                <div class="swiper-img">
                   <img src="./resources/img/gym.jpg" class="main-swiper-img">
                </div>
                <div class="swiper-content">
                   <div class="swiper-content-text">
                      <p class="swiper-tag">KAJA Hotel 만의 다양한 서비스</p>
                      <p class="swiper-content-content">KAJA HOTEL의 수영장,퍼스널 트레이닝 스튜디오</p>
                            <p class="swiper-content-content">그리고 레스토랑 겸 바인 다이닝 존을</p>                        
                            <p class="swiper-content-content">경험할 수 있습니다.</p>
                   </div>
                </div>
             </div>
            </div>
        <!-- 버튼 -->
        <div class="swiper-button-next"><img src="./resources/img/Next-btn.svg"></div>
      <div class="swiper-button-prev"><img src="./resources/img/Prev-btn.svg"></div>
        </div>
         
        <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
        <script>
            var swiper = new Swiper(".mySwiper", {
                    slidesPreView: 1,
                    spaceBetween: 30,
                    loop: true,
                    autoplay: {     //자동슬라이드 (false-비활성화)
                        delay: 2500, // 시간 설정
                        disableOnInteraction: false, // false-스와이프 후 자동 재생
                      },
                    navigation: {
                        nextEl: ".swiper-button-next",
                        prevEl: ".swiper-button-prev",
                },
            });
        </script>
    </section>

    <footer></footer>
</body>
</html>