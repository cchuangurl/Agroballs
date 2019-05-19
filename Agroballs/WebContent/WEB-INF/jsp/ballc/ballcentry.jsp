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
	/*  display: flex;
	 	flex-direction:column;
	 	justify-content: flex-start;
	 	align-items:center;	 */ 	
	 }
	 
table {
	margin-top:50px;
	margin-left:50px;
	}
	
caption {
	text-align:center;
	font-size:24px;
	color:blue;
	}
	
#rowwelcome {
	text-align:center;
	font-size:20px;
	color:brown;
	}
	
#rownickname {
	text-align:center;
	font-size:24px;
	color:blue;
	}

#rowtitle {
	text-align:center;
	font-size:28px;
	color:red;
	}
	
#rowinputid {
	text-align:left;
	font-size:20px;
	color:black;
	}
	
#rowinputpw {
	text-align:left;
	font-size:20px;
	color:black;
	}
	
#rowsubmitid {
	text-align:left;
	font-size:20px;
	color:black;
	}
	
#rownoid {
	text-align:left;
	font-size:20px;
	color:black;
	}	

/* #welcome {
	text-align:center;
}

#login {
	display: flex;
     justify-content:center;
}
.unusual {
	left:150px;
} */

</style>
<title>農業展望系統</title>
</head>
<body>
<fieldset>
<table>
<caption>一年之計在於春</caption>
<tr>
<td>
<br>
</td>
</tr>
<tr id="rowwelcome">
<td>
歡迎使用
</td>
</tr>
<tr id="rownickname">
<td>
年度農業水晶球!
</td>
</tr>
<tr id="rowtitle">
<td>
年度農業展望系統
</td>
</tr>
<tr id="rowinputid">
<td>
<form action="loginaction" method="post">
使用者帳號： 
<input type="text" name="account" required/>
</td>
</tr>
<tr id="rowinputpw">
<td>
使用者密碼：
<input type="password" name="password"/>
</td>
</tr>
<tr id="rowsubmitid">
<td>
<input type="submit" value="確認" style="float:right" >
</form>
</td>
</tr>
<tr id="rownoid">
<td>
<form action="getpassword" method="get">
<input type="submit" value="忘記密碼？">
</form>
<form action="add" method="get">
<input type="submit" value="註冊新帳號">
</form>
</td>
</tr>
</table>
</fieldset>
</body>
</html>