<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>輸入行動計畫</title>
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

<h2>計畫中文名稱：<font color="brown">${content0.planname }</font><br>
計畫要達成的目標：<font color="purple">${content0.state}</font></h2><br>
請輸入 "<font color="orchid">${content.verb}${content.state}</font>"  的執行細節：
<!-- form name="request" action="savecontent" method="post" -->
<c:url var="savesuiteUrl" value="/ocosa/savesuite/${content.id}" />
<form:form name="request" action="${savesuiteUrl}">
<div>1.主辦單位: <input type="text" name="actioner" style="width:50%">
</div><br>
<div>2.協辦單位:<input type="text" name="coactioner" style="width:50%">
</div><br>
<div>3.所需經費（千元）： <input type="text" name="budget" style="width:40%">
</div><br>
<div>4.人力需求（人次）：<input type="text" name="manpower" style="width:40%">
</div><br>
<div>5.開始日期：西元<span></span><input type="text" name="startyear" style="width:10%">年 
<input type="text" name="startmonth" style="width:5%">月
<input type="text" name="startday" style="width:5%">日</span>
<br>
<div>6.每次執行日數（天）：<input type="text" name="pertime" style="width:10%">
</div><br>
<div>7.執行後間隔日數（天）：<input type="text" name="interv" style="width:10%">
</div><br>
<div>8.需執行次數（次）：<input type="text" name="times" style="width:10%">
</div><br>
<div>9.完成期限：  自動設定 <input type="checkbox" name="calcdate"> 
或 西元<span></span><input type="text" name="endyear" style="width:10%">年 
<input type="text" name="endmonth" style="width:5%">月
<input type="text" name="endday" style="width:5%">日</span>
<div><br>
<div><span>10.效益種類：
<input type="text" name="benetype" style="width:10%">
<select name="beneunit" >
<option value="missing">(請下拉選擇計算單位)</option>
<option value="value">產值（價值）（千元）</option>
<option value="percent">成長率（變動率）（％）</option>
<option value="index">指數</option>
<option value="employ">就業（人數）</option>
<option value="impact">影響（套）</option>
<option value="otherbene">其他效益</option>
</select></span></div><br>
<div>11.預期效益量：
<input type="text" name="benefigure" style="width:15%">
</div>
<div>
<input type="hidden" name="flag" value="csf" />
<input type="submit" value="本行動措施資料確定">
</div>
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