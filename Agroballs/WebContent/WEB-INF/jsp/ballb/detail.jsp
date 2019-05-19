<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>使用者詳細資料</title>
</head>
<body>
    PID:<c:out value="${user.id }"></c:out>
    <br>
    戶名：<c:out value="${user.account }"></c:out>
    <br>
    密碼：<c:out value="${user.password }"></c:out>
    <br>
    真實姓名：<c:out value="${user.realname }"></c:out>
    <br>
   權限： <c:out value="${user.rights}"></c:out>
    <hr>
    <c:url var="saveUrl0" value="/ballb/list" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回前頁">        
</form:form>
</body>
</html>