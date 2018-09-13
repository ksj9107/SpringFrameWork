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
    <form action="/spring/login" method="POST">
        <div>
            <label for="">아이디</label>
            <input type="text" name="id">
        </div>
        <div>
            <label for="">비밀번호</label>
            <input type="password" name="password">
        </div>
        <div>
            <input type="submit" value="로그인">
        </div>
    </form>
</body>
</html>