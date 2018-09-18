<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/spring/resources/CSS/basesignup.css">
    <title>Document</title>
</head>
<body>
    <div class="container">
        <form action="">
            <div class ="display-flex">
                <div class="input-form">아이디</div>
                <input type="text" name="id">
            </div>
            <div class ="display-flex">
                <div class="input-form">비밀번호</div>
                <input type="password" name="pw" id="">
            </div>
            <div class ="display-flex">
                <div class="input-form">비밀번호확인</div>
                <input type="password" name="pwconfirm">
            </div>
            <div class ="display-flex">
                <div class="input-form">성별</div>
                <label for="남">남자<input type="radio" name="gender" id="male" checked value="male"></label>
                <label for="여">여자<input type="radio" name="gender" id="female" checked value="female"></label>
                
            </div>
            <div class ="display-flex">
                <div class="input-form">이메일</div>
                <input type="email" name="email" id="">
            </div>
            <div>
                <button type="submit" id="submit">제출</button>
            </div>
           
        </form>
    </div>
</body>
</html>