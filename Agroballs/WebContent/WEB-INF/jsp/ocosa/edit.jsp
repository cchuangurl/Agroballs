<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>編輯使用者資料</title>
</head>
<body>
    <c:url var="saveUrl" value="/ballb/save/${userAttribute.id }" />
    <form:form modelAttribute="userAttribute" action="${saveUrl }">
        <table>
            <tr>
                <td>ID:</td>
                <td><form:input path="id" readonly="true"/></td>
            </tr>
            <tr>
                <td>帳號:</td>
                <td><form:input path="account"/></td>
            </tr>
            <tr>
                <td>密碼:</td>
                <td><form:input path="password"/></td>
            </tr>
            <tr>
                <td>姓名:</td>
                <td><form:input path="realname"/></td>
            </tr>
            <tr>
                <td>權限:</td>
                <td><form:input path="rights"/></td>
            </tr>
        </table>
        <input type="submit" value="確定修正">
    </form:form>
    <br>
    <hr>
<c:url var="saveUrl0" value="/ballb/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</body>
</html>