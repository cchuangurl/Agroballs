<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
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
 	background-image:url("../staticfiles/20181114basegreen11.png");
	 background-repeat: no-repeat;
	 background-size: contain; 
	 height: 450px;
  	 width: 400px;
	 border:0px;
	 padding:0px;
	 margin:0px;
	 /* border-radius:10px;
	 display: flex;
	 justify-content: flex-start;	
	 	align-items:center;	
	 } */
	 
</style> -->
<title>計畫呈現形式選單</title>
</head>
<body>
<table class="header">
<tr>
<td>
本頁狀態說明:${statusreport}
</td>
<td width="400px">
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

     <table border="1">
        <tr>
            <th>書或表</th>
            <th>說明</th>
            <th>圖</th>
            <th>說明</th>
        </tr>
        <tr>
                <td>
                <c:url var="doguidelineUrl" value="/ocosa/doguideline/${planid}" />
                <form:form  action="${doguidelineUrl}" method="get">
                	<input type="hidden" name="statusreport" value="本頁自動生成施政方針稿">
					<input type="submit" value="施政方針稿">        
					</form:form>               
                </td>
                <td></td>
                <td><a href="#">計畫架構圖</a></td>
                <td></td>
         </tr>
         <tr>
                <td><a href="#">SWOT分析表</a></td>
                <td></td>
                <td>
                <c:url var="dofishboneproblemUrl" value="/ocosa/dofishboneproblem/${planid}" />
                <form:form  action="${dofishboneproblemUrl}" method="get">
                	<input type="hidden" name="statusreport" value="本頁自動生成問題分析魚骨圖">
					<input type="submit" value="問題分析魚骨圖">        
					</form:form>
                </td>
                <td></td>
         </tr>
         <tr>
                <td>
                <c:url var="saveUrl13" value="/ocosa/showcontent/${planid}" />
                <form:form  action="${saveUrl13}" method="get">
					<input type="submit" value="施政計畫書">        
					</form:form></td>
					<td></td>
                <td>
                <c:url var="dofishbonestrategyUrl" value="/ocosa/dofishbonestrategy/${planid}" />
                <form:form  action="${dofishbonestrategyUrl}" method="get">
                	<input type="hidden" name="statusreport" value="本頁自動生成解決策略魚骨圖">
					<input type="submit" value="解決策略魚骨圖">        
					</form:form>
					</td>
                <td></td>
         </tr>
         <tr>
               <td>
                <c:url var="doactionscheduleUrl" value="/ocosa/doactionschedule/${planid}" />                
                <form:form  action="${doactionscheduleUrl}" method="get">
                <input type="hidden" name="statusreport" value="本頁自動生成行動措施表">
					<input type="submit" value="行動措施表">        
					</form:form></td>
					<td></td>
                <td><a href="#">策略地圖</a></td>
                <td></td>
         </tr>
         <tr>
                <td><a href="#">預期效益統計表</a></td>
                <td></td>
                <td><a href="#">行動路徑圖</a></td>
                <td></td>
         </tr>
         <tr>
                <td><a href="#">執行考核表</a></td>
                <td></td>
                <td><a href="#"></a></td>
                <td></td>
         </tr>
     
    </table>
 
     <br>
     <hr>
  <hr>
     <c:url var="planmanageUrl" value="/ocosa/backtoplanlist/${userid}" />
<form:form  action="${planmanageUrl}" method="get">
<input type="submit" value="回計畫清單頁" />        
</form:form>
<c:url var="saveUrl0" value="/ocosa/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</body>
</html>