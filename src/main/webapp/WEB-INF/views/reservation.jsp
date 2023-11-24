<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Random"%>
    <%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CheckIn</title>

<link rel="stylesheet" href="./resources/css/checkinout.css">
<link rel="shortcut icon" href="./resources/img/파피콘.ico" type="image/x-icon">
<link rel="icon" href="./resources/img/파피콘.ico" type="image/x-icon">

 	<% // 로그인 하지 않았을 시 로그인 페이지로 이동
	 	
	 	session = request.getSession();
		if(session.getAttribute("loginEmail")==null){
			response.sendRedirect("loginpage.do");
		}
		
	 %> 


</head>
<body>

    <header>
        <div class="main-content">
            <ul> 
                <li class="main-res"><a href="#">예약</a></li> <!-- o -->
                <li class="main-ge"><a href="review.do">고객의 소리</a></li> <!-- o -->
                <a  class="main-logo" href="main.do"><img src="./resources/img/logo.svg"></a> <!-- o -->            
                <li class="main-resrist"><a href="reservationDetailpage.do">예약 내역</a></li> <!-- o -->
                <li class="main-login"><a href="logout.do">로그아웃</a></li> <!-- o -->
            </ul>
        </div>
    </header>

    <p class="top-text">예약 > 날짜선택</p>
    <hr>

	<form action="reservation.do" name="checkDateForm" onsubmit="return checkDate()">
			<!-- o -->
	
		<table id=tb align=center>
			
			<tr>
				<td class="email">E-Mail</td><td><input class="e-con" type=text name=email value=<%= session.getAttribute("loginEmail")%> readonly></td>
			</tr>
			<tr>
				<td colspan=2><hr /></td>
			</tr>
			<tr>
				<td class="in">Check In</td><td class="out">Check Out</td>
			</tr>
			<tr>
				<td><input  id=da type="date" name=cin required/></td>
			    <td><input  id=de type="date" name=cout required/></td>
			</tr>
			
			<tr colsapn=2>
				<td class="per">person</td>
			</tr>
			<tr>
				<td colspan=2 align=center><input id=pep type=number name=pep max=10 min=1  placeholder="인원수를 입력해 주세요" autocomplete="off" required></td>
			</tr>
			<tr >
				<td colspan=2 align=center><input id=bt type="submit" value="선택"  /></td>
			</tr>
		</table>
		
	</form>

    <footer></footer>


	<script>
		var now_utc = Date.now() // 지금 날짜를 밀리초로
		//getTimezoneOffset()은 현재 시간과의 차이를 분 단위로 반환
		var timeOff = new Date().getTimezoneOffset()*60000; // 분단위를 밀리초로 변환
		//new Date(now_utc-timeOff).toISOString()은 '2022-05-11T18:09:38.134Z'를 반환
		var today = new Date(now_utc-timeOff).toISOString().split("T")[0];
		document.getElementById("da").setAttribute("min", today);
		document.getElementById('da').valueAsDate = new Date();
		document.getElementById("de").setAttribute("min", today);
		document.getElementById('de').valueAsDate = new Date(now.setDate(now.getDate() + 1));
		
	      function checkDate(){
	          
	          var firstDate = new Date(document.checkDateForm.cin.value);
	          var secondDate = new Date(document.checkDateForm.cout.value);
	          
	          if(firstDate > secondDate){
	             
	             alert(document.checkDateForm.cin.value + "이전 날짜는 선택할 수 없습니다.");
	             return false;
	          }
	       }
	</script>

</body>
</html>