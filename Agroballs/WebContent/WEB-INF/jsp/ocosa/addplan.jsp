<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增專案</title>
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

   <c:url var="saveplanUrl" value="/ocosa/saveplan/${user.id}" />
<form:form  modelAttribute="plan" action="${saveplanUrl}" method="post" >
    <table border="1">
        <tr>
            <th width=10%>欄位名稱</th>
            <th width=30%>請填入欄位內容</th>
            <th width=20%>填寫說明</th>
           </tr>
        <tr>
        <td>專案英文代號:</td>
        <td><input id="plancode" name="plancode" type="text" style="width:400px"/></td>
        <td>請輸入能顯示專案主旨又具區別性之英文代號，可由連在一起的數個單字組成，30個字母左右</td>
       </tr>
       <tr>
        <td>專案密碼：</td>
        <td><input id="planpw" name="planpw" type="text" style="width:400px"/></td>
        <td>請自設專案密碼，連在一起的英文字母或數字組成</td>
        </tr>
        <tr>
        <td>可共用之使用者:</td>
        <td>     
         <select name="shareto">
         <option value="null">(不分享)</option>
        
        <c:forEach var="userx" items="${userList }" >       
        <option  value="${userx.account}">${userx.account}</option>
        </c:forEach>
        </select>
        </td>
           <td>請選擇可編輯此專案的其他使用者</td>
           </tr>
         <tr>
         <td>
        <input type="hidden" name="owner" value="${user.account}"/>   
       <input type="submit" value="送出"/>
       </td>
       </tr>
       </table>
        </form:form>  
    <br>
   <c:url var="planmanageUrl" value="/ocosa/backtoplanlist/${userid}" />
<form:form  action="${planmanageUrl}" method="get">
<input type="submit" value="回專案清單">        
</form:form>
<c:url var="saveUrl0" value="/ocosa/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</body>
</html>