<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增使用者</title>
</head>
<body>
    <form action="addsuccess" method="post">
        
        自設帳號:<input id="account" name="account" type="text" required/>
        <br>
        自設密碼:<input id="password" name="password" type="password" />        
        <br>
        真實姓名:<input id="realname" name="realname" type="text" required/>
        <br>
        <input type="submit" value="送出">
    </form>
    <br>
    <hr>
<c:url var="saveUrl0" value="/ballc/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</body>
</html>