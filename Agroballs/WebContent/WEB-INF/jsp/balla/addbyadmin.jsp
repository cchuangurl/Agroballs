<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理者新增使用者</title>
</head>
<body>
    <form action="addbyadmin" method="post">
        
        帳號:<input id="account" name="account" type="text" required/>
        <br>
        密碼:<input id="password" name="password" type="password" />        
        <br>
        真實姓名:<input id="realname" name="realname" type="text" required/>
        <br>
       權限:<select name="rights" >
		<option value="asker">看球</option>
		<option value="inputer">還可輸入資料</option>
		<option value="reviser">還可修正及刪除資料</opt ion>
		<option value="manager">還可管理帳戶</option>
		</select>      
        <br>
        <input type="submit" value="送出">
    </form>
    <br>
    <hr>
<c:url var="saveUrl0" value="/balla/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</body>
</html>