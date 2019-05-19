<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>農產供需展望系統</title>
<head />
</head>
<body>
<h3>不是張鐵嘴不是李半仙,是資訊的力量</h3>
歡迎使用<h2 style="color:red">農產供需水晶球!</h2>
<h2 style="color:blue">農產供需展望系統</h2>
<h3>祝使用順利！</h3>
<hr>
<h3>已有帳號者：</h3>
<!-- form action="IDcheck.jsp" method="post" -->
<form action="loginaction" method="post">
<br>
請輸入使用者帳號： 
<input type="text" name="account" required/>
<br>
請輸入密碼：
<input type="password" name="password"/>
<input type="submit" value="確認">
</form>
<hr>
尚未有帳號嗎?
<form action="add" method="get">
<input type="submit" value="申請帳號">
</form>
</body>
</html>