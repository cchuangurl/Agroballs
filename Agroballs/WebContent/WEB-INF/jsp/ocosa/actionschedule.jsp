<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
div {font-size="2" color="blue" text-indent="12"}
</style>
<title>行動計畫列表</title>
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

   <h1>專案名稱：<font color="brown">${planname}行動措施表</font></h1>
   <br>
    <table border="1">
        <tr>
            <th>行動措施</th>
            <th>主辦單位</th>
            <th>協辦單位</th>
            <th>所需人力(人次)</th>
            <th>經費需求（千元）</th>
            <th>完成期限</th>
        </tr>
        <c:forEach var="suite" items="${suiteList }" >
            <tr>
                <td style="width:35%">${suite.actionverb}${suite.action}</td>                
               <td style="width:5%">${suite.actioner}</td>                
                <td style="width:15%">${suite.coactioner}</td>
					<td style="width:5%">${suite.manpower}</td>
                <td style="width:5%">${suite.budget}</td>
                <td style="width:10%"><span>${suite.endyear}年${suite.endmonth}月${suite.endday}日</span></td>                       		
            </tr>
        </c:forEach>
    </table>
    
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