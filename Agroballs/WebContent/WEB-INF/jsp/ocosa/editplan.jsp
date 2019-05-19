<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>編輯專案基本資料</title>
</head>
<body>
<c:url var="upateplanUrl" value="/ocosa/updateplan/${user.id }" />
    <form:form commandName="planAttribute" action="${updateplanUrl}" method="post">
        <table>
            <tr>
                <td>ID:</td>
                <td><form:input path="id" readonly="true"/></td>
            </tr>
            <tr>
                <td>專案名稱代碼:</td>
                <td><form:input path="plancode"/></td>
            </tr>
            <tr>
                <td>專案密碼:</td>
                <td><form:input path="planpw"/></td>
            </tr>
            <tr>
                <td>專案建立者:</td>
                <td><form:input path="owner"/></td>
            </tr>
            <tr>
                <td>專案分享者:</td>
                <td><form:input path="shareto"/></td>
            </tr>
        </table>
        <br>
          <input type="submit" value="確定更新" />
    </form:form>
    <br>
    <hr>
     <c:url var="planmanageUrl" value="/ocosa/backtoplanlist/${userid}" />
<form:form  action="${planmanageUrl}" method="get">
<input type="submit" value="回計畫清單頁" />        
</form:form>
<c:url var="saveUrl0" value="/ocosa/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁" />        
</form:form>
</body>
</html>