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
<title>計畫內容列表</title>
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

   <h1>計畫名稱：<font color="brown">${contentList[0].planname}</font></h1>
   <br>
    <table border="1">
        <tr>
        	<th>ID<th>
            <th>內容型態</th>
            <th>內容</th>
            <th>內容編號</th>
            <th>優先性</th>
            <th>上層碼</th>
        </tr>
        <c:forEach var="content" items="${contentList }" >
            <tr>
            <td>${content.id}</td>
                <td>${content.statetype}</td>                
               <td>
               <c:choose>
               <c:when test="${content.statetype=='obj'}">
               <font size="6" color="red">${content.verb}</font>
               <font size="6" color="red">${content.state}</font>
               </c:when>
               <c:when test="${content.statetype=='csf'}">
               <font size="5" color="brown">${content.verb}</font>
               <font size="5" color="brown">${content.state}</font>
               </c:when>
               <c:when test="${content.statetype=='obs'}">
               <font size="4" color="purple">${content.verb}</font>
               <font size="4" color="purple">${content.state}</font>
               </c:when>
               <c:when test="${content.statetype=='str'}">
               <font size="3" color="pink">${content.verb}</font>
               <font size="3" color="pink">${content.state}</font>
               </c:when>
               <c:otherwise>
               <font size="2" color="orange">${content.verb}</font>
               <font size="2" color="orange">${content.state}</font>
               </c:otherwise>
               </c:choose>     
         
               </td>                
                <td>${content.statecode}</td>
					<td>${content.stateprior}</td>
                <td>${content.uppercode}</td>
                <td>
         		<c:url var="saveUrl1" value="/ocosa/editcontent/${content.id}" />
                <form:form  action="${saveUrl1}" method="get">
					
					<input type="submit" value="编輯左列資料">        
					</form:form></td>
                <td><c:url var="delcontentUrl" value="/ocosa/delcontent/${content.id}" />
                <form:form  action="${delcontentUrl}" method="get">
					<input type="submit" value="刪除左列資料">    
					</form:form></td> 
					<td><c:url var="addcontentUrl" value="/ocosa/addcontent/${content.id}" />
                <form:form  action="${addcontentUrl}" method="post">
                	<input type="hidden" name="flag" value="${content.statetype}" />		
					<input type="submit" value="續填下一層內容" />    
					</form:form></td>
					<!--
					<td><a href="editcontent/${plan.id}">编輯內容</a></td>
                <td><a href="delcontent/${plan.id}">删除內容</a></td>
                -->             
            </tr>
        </c:forEach>
    </table>
    <br>
<table class="footer">
<tr>
<td>

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