<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 내역</title>

     <link rel="stylesheet" href="./resources/css/reservation.css">
     <link rel="shortcut icon" href="./resources/img/파피콘.ico" type="image/x-icon">
     <link rel="icon" href="./resources/img/파피콘.ico" type="image/x-icon">

</head>
<body>

	<header>
        <div class="main-content">
            <ul> 
                <li class="main-res"><a href="reservationpage.do">예약</a></li>
                <li class="main-ge"><a href="review.do">고객의 소리</a></li>
                <a  class="main-logo" href="main.do"><img src="./resources/img/logo.svg"></a>            
                <li class="main-resrist"><a href="#">예약 내역</a></li>
                <li class="main-login"><a href="logout.do">로그아웃</a></li>
            </ul>
        </div>
    </header>
	
	<p class="top-text">예약내역 확인</p>
	<hr class="hr">


	<table>

	<tr class="menu"> <td width=18%>예약번호</td><td width=15%>지역</td><td width=18%>호텔이름</td> <td width=15%>이름</td> <td width=18%>이메일</td><td width=18%>전화번호</td>
	<td width=22%>체크인날짜</td><td width=25%>체크아웃날짜</td><td width=15%>인원</td></tr>
    </table>
    <table class="list">
	<c:forEach var="vo3" items="${alist3}"> 
			
			<tr class="li1">
				<td>${vo3.renum}</td>
				<td>${vo3.region}</td>
				<td>${vo3.hname}</td>
				<td>${vo3.name}</td>
				<td>${vo3.email}</td>
				<td>${vo3.tel}</td>
				<td>${vo3.cin}</td>
				<td>${vo3.cout}</td>
				<td>${vo3.pep}</td>
			</tr>	
	</c:forEach>
	</table>



</body>
</html>