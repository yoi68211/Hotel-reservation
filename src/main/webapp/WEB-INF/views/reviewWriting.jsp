<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link rel="shortcut icon" href="img/파피콘.ico" type="image/x-icon">
<link rel="icon" href="img/파피콘.ico" type="image/x-icon">
<link rel="stylesheet" href="./resources/css/cusgbinput.css">
</head>
<body>
    
    <header>
        <div class="main-content">
            <ul> 
                <li class="main-res"><a href="reservation.jsp">예약</a></li> <!-- o -->
                <li class="main-ge"><a href="review.do">고객의 소리</a></li> <!-- o -->
                <a  class="main-logo" href="main.jsp"><img src="./resources/img/logo.svg"></a> <!-- o -->            
                <li class="main-resrist"><a href="reservationDetail.jsp">예약 내역</a></li> <!-- o -->
                <li class="main-login"><a href="logout.do">로그아웃</a></li> <!-- o -->
            </ul>
        </div>
    </header>


	<p class="top-text">고객의 소리</p>
    <hr class="hr">

	<!-- o -->
    <form action="reviewWriting.do"  method=post>
        <input class="title" type="text" name="tit"   placeholder="제목을 입력해 주세요" autocomplete="off" ><br>
        <input  class="nik" type="text"  name="name" value=<%= session.getAttribute("loginEmail")%> readonly><br>    
        <input  class="today" type="date" name="tda" id=tda readonly>
        <hr class="hr1">
        <textarea name="nayoung" ></textarea>
        <input type=hidden name=cou value=0>
        <input  class="add"  type="submit" value="등록">
        <input class="res" type="reset" value="취소">
    </form>
	
<script>
		
		document.getElementById('tda').valueAsDate = new Date();
		
</script>
    <footer></footer>
    
</body>
</html>