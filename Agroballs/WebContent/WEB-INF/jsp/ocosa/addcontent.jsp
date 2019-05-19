<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!--  DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" -->
<! DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <style type="text/css">
body {
  background-color: #d6d6d3;
  height: 100vh;
  width: 100vw;
  display: flex;
     flex-direction:column;
	 justify-content: flex-start;
     align-items:center;
  	margin: 0;
}

fieldset {
 	background-image:url("../staticfiles/20180621登入底圖.png");
	 background-repeat: repeat-x;
	 background-size: contain;
	 height: 400px;
  	width: 1000px;
	 border:0px;
	 padding:0px;
	 margin:0px;
	 border-radius:10px;
	 /* display: flex;
	 	flex-direction:column;
	 	justify-content: flex-start;
	 	align-items:center;	 	 */
	 }
#subinstruction1 {
	align:right;
}	 
	 
</style> -->
<title>輸入計畫內容</title>
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

<h3>計畫中文名稱：<font color="brown">${content0.planname }</font><br>
計畫要達成的目標：<font color="purple"><span id="object">${content0.verb}${content0.state}</span></font></h3><br>
<fieldset>
<span id="instruction1">請輸入 "<font color="orchid">${content.verb}${content.state}</font>"  的  "<font color="orange">${typeinfo[1][2]}</font>"(6個以內)及優先順序：
</span>
<br>
--------------------------------------(優先順序由1至9，各項的優先順序儘量不要一樣)-------------------<span id="subinstruction1"><font style="color:blue">優先順序</font></span><br>
<!-- form name="request" action="savecontent" method="post" -->
<c:url var="savecontentUrl" value="/ocosa/savecontent/${planid}" />
<form:form name="request" action="${savecontentUrl}" method="post">
<div>1.
<input type="text" name="verb1" style="width:60px">
<input type="text" name="stdstate1" style="width:600px">
<select name="stdprio1" >
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
</select></div><br>
<div>2.
<input type="text" name="verb2" style="width:60px">
<input type="text" name="stdstate2" style="width:600px">
<select name="stdprio2" >
<option value="2">2</option>
<option value="1">1</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
</select></div><br>
<div>3.
<input type="text" name="verb3" style="width:60px">
<input type="text" name="stdstate3" style="width:600px">
<select name="stdprio3" >
<option value="3">3</option>
<option value="2">2</option>
<option value="1">1</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
</select></div><br>
<div>4.
<input type="text" name="verb4" style="width:60px">
<input type="text" name="stdstate4" style="width:600px">
<select name="stdprio4" >
<option value="4">4</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="1">1</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
</select></div><br>
<div>5.
<input type="text" name="verb5" style="width:60px">
<input type="text" name="stdstate5" style="width:600px">
<select name="stdprio5" >
<option value="5">5</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="1">1</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
</select></div><br>
<div>6.
<input type="text" name="verb6" style="width:60px">
<input type="text" name="stdstate6" style="width:600px">
<select name="stdprio6" >
<option value="6">6</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="1">1</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
</select></div><br>
<!--
<input type="hidden" name="statetype" value="${content1.statetype}">
<input type="hidden" name="uppercode" value="${content1.uppercode}">
<input type="hidden" name="stateprior" value="${content1.stateprior}">
-->
<input type="hidden" name="suppercode" value="5">
<input type="hidden" name="planname" value="${content0.planname}">
<input type="hidden" name="plancode" value="${content0.plancode}">
<input type="hidden" name="statecode" value="${content.statecode}">
<input type="hidden" name="nexttype" value="${typeinfo[0][2]}">
<div><input type="submit" value="輸入確定"></div>
</form:form>
</fieldset>
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