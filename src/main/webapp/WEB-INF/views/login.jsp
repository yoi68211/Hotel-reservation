<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<link rel="shortcut icon" href="/resources/img/파피콘.ico" type="image/x-icon">
<link rel="icon" href="/resources/img/파피콘.ico" type="image/x-icon">
<link rel="stylesheet" href="./resources/css/login.css">
</head>

<body>

    <header>
        <div class="main-content">
            <ul> 
                <li class="main-res"><a href="loginpage.do">예약</a></li> <!-- o -->
                <li class="main-ge"><a href="loginpage.do">고객의 소리</a></li> <!-- o -->
                <a  class="main-logo" href="index.jsp"><img src="./resources/img/logo.svg"></a> <!-- o -->                  
                <li class="main-resrist"><a href="loginpage.do">예약 내역</a></li> <!-- o -->
                <li class="main-login" id="login"><a href="loginpage.do">로그인</a></li> <!-- o -->
            </ul>
        </div>
    </header>

    <p class="login-text">로그인</p>

    <form class="input-form" action="login.do" method="post">

        <input type="email" class="lo-email" name="email" placeholder="이메일을 입력해 주세요" autocomplete="off"><br>
        <input type="password" class="lo-pw" name="passw" placeholder="비밀번호를 입력해 주세요" autocomplete="off"><br>
        <input class="lo-login" type="submit" value="로그인"><br>
        <a class="lo-sing" href="joinpage.do">회원가입</a>
        <a class="lo-ex" href="userDeletepage.do">회원탈퇴</a>
    </form>
    
   
</body>
</html>