<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>編輯行動措施細節</title>
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

    <c:url var="updatesuiteUrl" value="/ocosa/updatesuite/${suiteAttribute.id }" />
    <form:form modelAttribute="suiteAttribute" action="${updatesuiteUrl }">
        <table>
            <tr>
                <td>ID:</td>
                <td><form:input path="id" readonly="true"/></td>
            </tr>
            <tr>
                <td>行動動詞:</td>
                <td><form:input path="actionverb"/></td>
            </tr>
            <tr>
                <td>行動述詞:</td>
                <td><form:input path="action"/></td>
            </tr>
            <tr>
                <td>主辦單位:</td>
                <td><form:input path="actioner"/></td>
            </tr>
            <tr>
                <td>協辦單位:</td>
                <td><form:input path="coactioner"/></td>
            </tr>
            <tr>
                <td>所需經費（千元）:</td>
                <td><form:input path="budget"/></td>
            </tr>
            <tr>
                <td>人力需求（人次）:</td>
                <td><form:input path="manpower"/></td>
            </tr>
            <tr>
                <td>開始年:</td>
                <td><form:input path="startyear"/></td>
            </tr>
            <tr>
                <td>開始月:</td>
                <td><form:input path="startmonth"/></td>
            </tr>
             <tr>
                <td>開始日:</td>
                <td><form:input path="startday"/></td>
            </tr>
            <tr>
                <td>每次執行日數:</td>
                <td><form:input path="pertime"/></td>
            </tr>
            <tr>
                <td>每次間隔日數:</td>
                <td><form:input path="interv"/></td>
            </tr>
            <tr>
                <td>執行次數:</td>
                <td><form:input path="times"/></td>
            </tr>
            <tr>
                <td>期限年:</td>
                <td><form:input path="endyear"/></td>
            </tr>
            <tr>
                <td>期限月:</td>
                <td><form:input path="endmonth"/></td>
            </tr>
            <tr>
                <td>期限日:</td>
                <td><form:input path="endday"/></td>
            </tr>
            <tr>
                <td>何種效益:</td>
                <td><form:input path="benetype"/></td>
            </tr>
            <tr>
                <td>效益單位:</td>
                <td><form:input path="beneunit"/></td>
            </tr>
            <tr>
                <td>效益量:</td>
                <td><form:input path="benefigure"/></td>
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