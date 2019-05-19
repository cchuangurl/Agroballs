<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User List</title>
</head>
<body>
    <a href="addbyadmin">增加使用者</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>帳號</th>
            <th>密碼</th>
            <th>姓名</th>
            <th>權限</th>
        </tr>
        <c:forEach var="user" items="${userList }" >
            <tr>
                <td>${user.id}</td>
                <td>${user.account}</td>
                <td>${user.password }</td>
                <td>${user.realname}</td>
                	<td>${user.rights}</td>
                <td><a href="show/${user.id}">詳細資料</a></td>
                <td><a href="edit/${user.id}">编輯</a></td>
                <td><a href="del/${user.id}">删除</a></td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <hr>
<c:url var="saveUrl0" value="/ballb/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</body>
</html>