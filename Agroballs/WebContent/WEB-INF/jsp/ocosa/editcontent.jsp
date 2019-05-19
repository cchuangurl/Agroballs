<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>編輯計畫內容</title>
</head>
<body>
<table class="header">
<tr>
<td>
本頁狀態說明:${statusreport}
</td>
<td width="400px">
<td>
<td>
<c:url var="showcontentUrl" value="/ocosa/showcontent/${planid}" />
<form:form  action="${showcontentUrl}" method="get">					
<input type="submit" value="續填其他計畫內容">   
</form:form> 
</td>
<td>
<c:url var="planmanageUrl" value="/ocosa/backtoplanlist/${userid}" />
<form:form  action="${planmanageUrl}" method="get">
<input type="submit" value="回計畫清單頁" />        
</form:form>
</td>
<td>
<c:url var="saveUrl0" value="/ocosa/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</td>
</tr>
</table>

    <c:url var="saveUrl" value="/ocosa/updatecontent/${contentAttribute.id }" />
    <form:form modelAttribute="contentAttribute" action="${saveUrl }">
        <table>
            <tr>
                <td>ID:</td>
                <td><form:input path="id" readonly="true"/></td>
            </tr>
            <tr>
                <td>計畫代碼:</td>
                <td><form:input path="plancode"/></td>
            </tr>
            <tr>
                <td>計畫名稱:</td>
                <td><form:input path="planname"/></td>
            </tr>
            <tr>
                <td>內容型態:</td>
                <td><form:input path="statetype"/></td>
            </tr>
            <tr>
                <td>動詞:</td>
                <td><form:input path="verb"/></td>
            </tr>
            <tr>
                <td>述詞:</td>
                <td><form:input path="state"/></td>
            </tr>
            <tr>
                <td>內容編號:</td>
                <td><form:input path="statecode"/></td>
            </tr>
            <tr>
                <td>優先性:</td>
                <td><form:input path="stateprior"/></td>
            </tr>
            <tr>
                <td>SWOT屬性:</td>
                <td><form:input path="swottype"/></td>
            </tr>
             <tr>
                <td>上層碼:</td>
                <td><form:input path="uppercode"/></td>
            </tr>
            
        </table>
       <input type="submit" value="確定修正">
    </form:form>
    <br>
    <hr>
<table class="footer">
<tr>
<td>
<c:url var="showcontentUrl" value="/ocosa/showcontent/${planid}" />
<form:form  action="${showcontentUrl}" method="get">					
<input type="submit" value="續填其他計畫內容">   
</form:form> 
</td>
<td>
<c:url var="planmanageUrl" value="/ocosa/backtoplanlist/${userid}" />
<form:form  action="${planmanageUrl}" method="get">
<input type="submit" value="回計畫清單頁" />
</form:form>
</td>
<td>
<c:url var="saveUrl0" value="/ocosa/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</td>
</tr>
</table>
</body>
</html>