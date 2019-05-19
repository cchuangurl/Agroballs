<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增使用者</title>
</head>
<body>
    <form action="addbyadminsuccess" method="post">
        
        給予帳號:<input id="account" name="account" type="text" required/>
        <br>
        初始密碼:<input id="password" name="password" type="password" />
        <br>
        真實姓名:<input id="realname" name="realname" type="text" required/>
        <br>
        賦予權限:<select name="rights" >
		<option value="guest">試用者(可試用1周)</option>
		<option value="creater">會員(可新增，編輯，複製計畫內容及刪除自建計畫)</option>
		<option value="reviser">參與者(可編輯，複製計畫內容)</option>
		<option value="manager">計畫管理人(可管理每個計畫)</option>
		</select>      
        <br>        
        <input type="submit" value="送出">
    </form>
    <br>
    <hr>
    <c:url var="saveUrl1" value="/ocosa/list" />
<form:form  action="${saveUrl1}" method="get">
<input type="submit" value="回上頁">        
</form:form>
<c:url var="saveUrl0" value="/ocosa/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</body>
</html>