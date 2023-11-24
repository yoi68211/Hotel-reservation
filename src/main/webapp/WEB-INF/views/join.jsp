<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입창</title>
<link rel="shortcut icon" href="img/파피콘.ico" type="image/x-icon">
<link rel="icon" href="img/파피콘.ico" type="image/x-icon">
<link rel="stylesheet" href="./resources/css/join.css">

</head>

 <script>
    let reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~?!@#$%^&*_-]).{8,}$/
    function checkInfo() {
      if(document.userInfo.name.value == ""){
         alert("이름을 입력해주세요");
         return false;
      } 
      if(document.userInfo.email.value == ""){
         alert("이메일을 입력해주세요")
         return false;
      }
       if(document.userInfo.passw.value != document.userInfo.passwCk.value){
          alert("동일한 비밀번호를 입력해주세요");
          return false;
       }
        if(document.userInfo.passw.value.length < 8 ){
          alert("비밀번호 8자리 이상으로 작성해주세요");
          return false;
       }  
        if(!reg.test(document.userInfo.passw.value)){
          alert("비밀번호는 8자 이상, 숫자, 대문자, 소문자, 특수문자를 모두 포함해야 합니다.");
          return false;
       } 
        if(document.userInfo.tel.value == ""){
           alert("전화번호를 입력해주세요");
           return false;
        }
       
    }
  

  </script>
<body>

    <header>
        <div class="main-content">
            <ul> 
                <li class="main-res"><a href="loginpage.do">예약</a></li>
                <li class="main-ge"><a href="loginpage.do">고객의 소리</a></li>
                <a  class="main-logo" href="index.jsp"><img src="./resources/img/logo.svg"></a>                  
                <li class="main-resrist"><a href="loginpage.do">예약 내역</a></li>
                <li class="main-login"><a href="loginpage.do">로그인</a></li>
            </ul>
        </div>
    </header>

    <p class="login-text">회원가입</p>
    
    <form class="input-form" action="join.do" name="userInfo" method=post onsubmit="return checkInfo()">
        <input class="jo-name" type="text" name="name"  placeholder="이름을 입력해 주세요" autocomplete="off"><br>
        <input class="jo-email" type="email"  name="email"  placeholder="이메일을 입력해 주세요" autocomplete="off"><br>    
        <input class="jo-pw1" type="password" name="passw"  placeholder="비밀번호를 입력해 주세요" autocomplete="off"><br>
        <input class="jo-pw2" type="password"  name="passwCk" placeholder="비밀번호를 다시 입력해 주세요" autocomplete="off"><br>
        <input class="jo-tel" type="text" name="tel"  placeholder="전화번호를 입력해 주세요" autocomplete="off" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"><br>
        <input class="join" type="submit" value="회원가입">
        <input class="re" type="reset" value="취소">
    </form>
</body>

</html>