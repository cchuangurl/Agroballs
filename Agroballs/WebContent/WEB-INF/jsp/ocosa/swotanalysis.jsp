<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">




</style>
<script>
</script>
<title>SWOT分析表</title>
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
<c:url var="displaymenuUrl" value="/ocosa/displaymenu/${planid}" />
<form:form  action="${displaymenuUrl}" method="get">
<input type="submit" value="回到管理書圖清單"/>        
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
   <h1><font color="brown">${content0.planname}SWOT分析表</font></h1>
   <br>





<br>
<table class="footer">
<tr>
<td>
<c:url var="displaymenuUrl" value="/ocosa/displaymenu/${planid}" />
<form:form  action="${displaymenuUrl}" method="get">
<input type="submit" value="回到管理書圖清單"/>        
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