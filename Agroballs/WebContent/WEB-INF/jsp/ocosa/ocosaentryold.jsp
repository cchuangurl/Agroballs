<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
body {
  background-color: #d6d6d3;
  height: 100vh;
  width: 100vw;
  display: flex;
     justify-content: center;
     align-items:center;
  margin: 0;
}

fieldset {
 	background-image:url("../staticfiles/20180621登入底圖.png");
	 background-repeat: no-repeat;
	 background-size: contain;
	 height: 450px;
  	width: 400px;
	 border:0px;
	 padding:0px;
	 margin:0px;
	 border-radius:10px;
	 display: flex;
	 	flex-direction:column;
	 	justify-content: flex-start;
	 	align-items:center;	 	
	 }

#welcome {
	text-align:center;
}

#login {
	display: flex;
     justify-content:center;
}
.unusual {
	left:150px;
}

</style>
<title>OCOSA專案管理系統</title>
<head />
</head>
<body>
<fieldset>
<div id="welcome">
<br>
<h3>工欲善其事必先利其器</h3>
<p>
歡迎使用
</p>
<p><h3 style="color:red">OCOSA!</h3>
</p>
<h2 style="color:blue">脈絡連貫專案管理輔助系統</h2>
</div>
<div id="login">
<form action="loginaction" method="post">
<br>
使用者帳號： 
<input type="text" name="account" required/>
<br>
使用者密碼：
<input type="password" name="password"/>
<br>
<input type="submit" value="確認" style="float:right" >
</form>
</div>
<br>
<br>
<div class="unusual">
<form action="getpassword" method="get">
<input type="submit" value="忘記密碼？">
</form>
<form action="add" method="get">
<input type="submit" value="註冊新帳號">
</form>
</div>
</fieldset>
</body>
</html>