<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <div>
        <form action="/spring/signup" method="POST">
            <div>
                아이디
                <input type="text" name="id">
            </div>
            <div>
                비밀번호
                <input type="password" name="pw" id="">
            </div>
            <div>
                비밀번호확인
                <input type="password" name="pwconfirm">
            </div>
            <div>
                성별
                <label for="남">남자<input type="radio" name="gender" id="male" checked value="male"></label>
                <label for="여">여자<input type="radio" name="gender" id="female" checked value="female"></label>
                
            </div>
            <div>
                이메일
                <input type="email" name="email" id="">
                <button>이메일 확인</button>
            </div>
            <div>제출버튼
                <button type="submit">제출</button>
            </div>
           
        </form>
    </div>
</body>
</html>